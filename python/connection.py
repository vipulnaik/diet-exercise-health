import pymysql
from pymysql.constants import CLIENT

def connect():
    return pymysql.connect(
        host = "localhost",
        user = "root",
        db = "diet_exercise_health",
        cursorclass = pymysql.cursors.DictCursor,
        client_flag = CLIENT.MULTI_STATEMENTS,
    )
