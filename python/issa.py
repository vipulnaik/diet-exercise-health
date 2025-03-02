#!/usr/bin/env python3

import datetime
import shared, connection

DEFAULT_CONSUMPTION_LENGTH_IN_DAYS = {
    "Dil Se Indian Cuisine half chana masala and half aloo gobi": 1,
    "India House Oregon aloo sag": 1,
    "Kitava Power Bowl": 1,
    "Lemon": 7,
    "Morton Iodized Salt": 30*8,
    "Orange bell pepper": 4,
    "TJ Almonds": 30*2,
    "TJ Brazil Nuts": 30*2,
    "TJ Organic Couscous": 14,
    "Whole Foods Mexican Whole Wheat Tortillas": 14,
}

def logging(*args):
    debug = True
    if debug:
        print(*args)

def main() -> None:
    # amount_consumed = get_food_amount_for_range("Beefsteak tomato", datetime.date(2024, 8, 20), datetime.date(2024, 9, 13))
    amount_consumed = get_food_amount_for_range("Morton Iodized Salt", datetime.date(2025, 5, 6), datetime.date(2025, 5, 10))
    # start_date = datetime.date(2024, 2, 4)
    # for w in range(56):
    #     week_start = start_date + datetime.timedelta(weeks=w)
    #     week_end = start_date + datetime.timedelta(weeks=w+1)
    #     print(f"For week starting {week_start.strftime('%Y-%m-%d')}: ", end="")
    #     get_nutrients_for_range(week_start, week_end)

def get_nutrients_for_range(start_date: datetime.date, end_date: datetime.date):
    _connection = connection.connect()
    query = """
        select short_name from food_types
    """
    with _connection.cursor() as cursor:
        cursor.execute(query)
        result = cursor.fetchall()
        food_types = [row["short_name"] for row in result]
        all_nutrients_consumed = {}
        for food_type in food_types:
            amount_consumed = get_food_amount_for_range(food_type, start_date, end_date)
            nutrients_unit = get_nutrient_for_food(food_type)
            nutrients_consumed = {k: (v*amount_consumed if v is not None else None)
                                  for k, v in nutrients_unit.items()}
            all_nutrients_consumed = add_nutrient_dicts(all_nutrients_consumed, nutrients_consumed)
        for k, v in all_nutrients_consumed.items():
            if k == "calories":
                if v is None:
                    val_str = "unknown"
                else:
                    num_days = (end_date - start_date).days
                    assert num_days > 0
                    val_str = f"{v} (daily avg: {v / num_days})"
                # print(f"{k}: {val_str}")

def add_nutrient_dicts(d1, d2):
    result = {}
    all_keys = set(d1.keys()).union(d2.keys())
    for key in all_keys:
        v1 = d1.get(key)
        v2 = d2.get(key)
        if v1 is None:
            val = v2
        elif v2 is None:
            val = v1
        else:
            val = v1 + v2
        result[key] = val
    return result

def get_nutrient_for_food(food_type: str) -> dict[str, float | None]:
    _connection = connection.connect()
    query = """
        select * from food_types where short_name = %s
    """
    d: dict[str, float | None] = {}
    with _connection.cursor() as cursor:
        cursor.execute(query, (food_type,))
        result = cursor.fetchall()
        assert len(result) == 1
        the_food = result[0]
        for key in the_food:
            if key.endswith("_in_mg") or key.endswith("_in_mcg") or key.endswith("_in_grams") or key == "calories":
                val = the_food[key]
                if val is None:
                    d[key] = None
                else:
                    d[key] = float(val)
        return d

def get_food_amount_for_range(food_type: str, start_date: datetime.date, end_date: datetime.date) -> float:
    """Return how many instances of `food_type` were consumed between
    start_date (inclusive) and end_date (exclusive). The number of instances is
    prorated and can be fractional."""
    _connection = connection.connect()
    query = """
        select * from food_preparations_and_openings where food_type = %s
        order by preparation_or_opening_date
    """
    assert start_date <= end_date
    logging(f"Checking how much {food_type} was consumed in the period [{start_date}--{end_date}):")
    with _connection.cursor() as cursor:
        cursor.execute(query, (food_type,))
        result = cursor.fetchall()
        if len(result) == 0:
            total = 0.0
            logging(f"total is {total}")
            return total
        elif len(result) == 1:
            curr_date = result[0]["preparation_or_opening_date"]
            guessed_next_date = curr_date + datetime.timedelta(days=DEFAULT_CONSUMPTION_LENGTH_IN_DAYS[food_type])
            how_long_it_will_probably_take_to_fully_consume = (guessed_next_date - curr_date).days
            assert how_long_it_will_probably_take_to_fully_consume == DEFAULT_CONSUMPTION_LENGTH_IN_DAYS[food_type]
            portion_to_count = max(0, (min(guessed_next_date, end_date) - max(start_date, curr_date)).days)
            fraction = portion_to_count / how_long_it_will_probably_take_to_fully_consume
            quantity = float(result[0]["quantity"])
            total = fraction * quantity
            assert(how_long_it_will_probably_take_to_fully_consume > 0)
            assert(portion_to_count >= 0)
            logging(f"guessing period [{curr_date}--{guessed_next_date}): partially counting; +{fraction}*{quantity} ({portion_to_count}/{how_long_it_will_probably_take_to_fully_consume} days, {quantity} {food_type})")
            logging(f"total is {total}")
            return total
        # assert start_date >= result[0]["preparation_or_opening_date"]
        if start_date < result[0]["preparation_or_opening_date"]:
            # The start_date we are given is too far back, before we even
            # started logging this food_type, so just give up and set that
            # start_date to where the logging began.
            start_date = result[0]["preparation_or_opening_date"]
        # TODO: do similar check for end_date
        total = 0.0
        for i in range(len(result) - 1):
            curr_date = result[i]["preparation_or_opening_date"]
            next_date = result[i+1]["preparation_or_opening_date"]
            if start_date <= curr_date and next_date <= end_date:
                quantity = float(result[i]["quantity"])
                total += quantity
                logging(f"period [{curr_date}--{next_date}): fully counting; +1.0*{quantity}")
            elif (curr_date <= start_date < next_date) and (curr_date <= end_date < next_date):
                how_long_it_took_to_fully_consume = (next_date - curr_date).days
                portion_to_count = (end_date - start_date).days
                fraction = portion_to_count / how_long_it_took_to_fully_consume
                quantity = float(result[i]["quantity"])
                total += fraction * quantity
                assert(how_long_it_took_to_fully_consume > 0)
                assert(portion_to_count >= 0)
                logging(f"period [{curr_date}--{next_date}): partially counting; +{fraction}*{quantity} ({portion_to_count}/{how_long_it_took_to_fully_consume} days, {quantity} {food_type})")
            elif curr_date <= start_date < next_date:
                how_long_it_took_to_fully_consume = (next_date - curr_date).days
                portion_to_count = (next_date - start_date).days
                fraction = portion_to_count / how_long_it_took_to_fully_consume
                quantity = float(result[i]["quantity"])
                total += fraction * quantity
                assert(how_long_it_took_to_fully_consume > 0)
                assert(portion_to_count >= 0)
                logging(f"period [{curr_date}--{next_date}): partially counting; +{fraction}*{quantity} ({portion_to_count}/{how_long_it_took_to_fully_consume} days, {quantity} {food_type})")
            elif curr_date <= end_date < next_date:
                how_long_it_took_to_fully_consume = (next_date - curr_date).days
                portion_to_count = (end_date - curr_date).days
                fraction = portion_to_count / how_long_it_took_to_fully_consume
                quantity = float(result[i]["quantity"])
                total += fraction * quantity
                assert(how_long_it_took_to_fully_consume > 0)
                assert(portion_to_count >= 0)
                logging(f"period [{curr_date}--{next_date}): partially counting; +{fraction}*{quantity} ({portion_to_count}/{how_long_it_took_to_fully_consume} days, {quantity} {food_type})")
        if end_date > next_date:
            extrapolated_next_date = next_date + datetime.timedelta(days=(next_date - curr_date).days)
            if end_date > extrapolated_next_date:
                # We don't know how to handle this case because it's too far in
                # the future, so just give up and return the total we already
                # have
                return total
            # assert end_date <= extrapolated_next_date
            how_long_it_will_probably_take_to_fully_consume = (extrapolated_next_date - next_date).days
            portion_to_count = (end_date - next_date).days
            fraction = portion_to_count / how_long_it_will_probably_take_to_fully_consume
            quantity = float(result[i]["quantity"])
            total += fraction * quantity
            assert(how_long_it_will_probably_take_to_fully_consume > 0)
            assert(portion_to_count >= 0)
            logging(f"extrapolating period [{next_date}--{extrapolated_next_date}): partially counting; +{fraction}*{quantity} ({portion_to_count}/{how_long_it_will_probably_take_to_fully_consume} days, {quantity} {food_type})")
        logging(f"total is {total}")
        return total

if __name__ == "__main__":
    main()
