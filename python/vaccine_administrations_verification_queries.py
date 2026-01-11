import shared, connection

queries = [
    "select administration_date, count(1) as freq from vaccine_administrations where administration_date >= '2014-01-01' group by administration_date having freq > 1;",

    "select * from vaccine_administrations where administration_date >= '2022-10-01' and location != 'Walgreens (Adeline St), Berkeley';",

    """
    drop temporary table if exists vaccine_administrations_copy;

    create temporary table vaccine_administrations_copy as select * from vaccine_administrations where administration_date >= '2014-01-01';

    drop temporary table if exists vaccine_administrations_with_next;

    create temporary table vaccine_administrations_with_next as
    select vaccine_administrations.vaccine,
    vaccine_administrations.administration_date,
    min(vaccine_administrations_copy.administration_date) as next_administration_date,
    datediff(min(vaccine_administrations_copy.administration_date), vaccine_administrations.administration_date) as days_to_next_administration
    from vaccine_administrations left join vaccine_administrations_copy
    on vaccine_administrations.vaccine = vaccine_administrations_copy.vaccine
    and vaccine_administrations.administration_date < vaccine_administrations_copy.administration_date
    where vaccine_administrations.administration_date >= '2014-01-01'
    group by vaccine, administration_date;""",

    # gaps should be as expected

    "select * from vaccine_administrations_with_next where vaccine = 'Tdap (whooping cough)' and not (days_to_next_administration between 365 * 9 and 365 * 11);",

    "select * from vaccine_administrations_with_next where vaccine = 'Influenza' and not (days_to_next_administration between 270 and 450);",

    "select * from vaccine_administrations_with_next where administration_date > '2021-12-24' /* after first booster */ and vaccine = 'COVID' and not (days_to_next_administration between 270 and 450);",

    # no vaccine should be due

    "select * from vaccine_administrations_with_next where vaccine = 'Tdap (whooping cough)' and next_administration_date is null and datediff(curdate(), administration_date) >= 365 * 10;",

    "select * from vaccine_administrations_with_next where vaccine = 'Influenza' and next_administration_date is null and datediff(curdate(), administration_date) >= 450;",

    "select * from vaccine_administrations_with_next where vaccine = 'COVID' and next_administration_date is null and datediff(curdate(), administration_date) >= 450;",

]

_connection = connection.connect()

for query in queries:
    shared.executeQueryAndPrintIfNonEmptyResults(query, _connection)
