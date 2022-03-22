# diet-exercise-health

Diet, exercise, and health information for Vipul Naik!

There is no portal to access the data. Use the instructions below to
load the SQL data locally to explore it yourself.

## Setting up

You can create the `diet_exercise_health` database either directly in
MySQL or by running this from the root folder of this repository,
after updating MYSQL_ARGS in the Makefile (such as `-u<username>
-p<password>`):

```bash
make init
```

Instead of editing the Makefile, you can also pass in the arguments to
each make:

```bash
make MYSQL_ARGS=<args> init
```

### Loading and refreshing data

Once you already have the `diet_exercise_health` SQL datatbase set up,
you can update the MYSQL_ARGS in the Makefile (such as `-u<username>
-p<password>`) and you can then load the data using:

```bash
make reset && make read
```
