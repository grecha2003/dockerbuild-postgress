import psycopg2
import os
from urllib.parse import urlparse

def fetch_min_max_age():
    conn = None
    try:
        # Получаем информацию из переменной окружения DATABASE_URL
        database_url = os.getenv('DATABASE_URL')
        parsed_url = urlparse(database_url)
        
        dbname = parsed_url.path[1:]  # Убираем первый символ '/'
        user = parsed_url.username
        password = parsed_url.password
        host = parsed_url.hostname
        port = parsed_url.port

        conn = psycopg2.connect(
            dbname=dbname,
            user=user,
            password=password,
            host=host,
            port=port
        )
        
        cur = conn.cursor()
        cur.execute('''
            SELECT MIN(age), MAX(age)
            FROM test_table
            WHERE LENGTH(name) < 6
        ''')
        result = cur.fetchone()
        cur.close()
        print(f"Minimum age: {result[0]}, Maximum age: {result[1]}")
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()

if __name__ == '__main__':
    fetch_min_max_age()
