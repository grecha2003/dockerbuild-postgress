import os
import psycopg2

# Парсинг URL базы данных из переменной окружения
DATABASE_URL = os.environ.get("DATABASE_URL")

# Установка соединения с базой данных
connection = psycopg2.connect(DATABASE_URL)
cursor = connection.cursor()

# Выполнение запроса
query = """
    SELECT MIN(age), MAX(age) 
    FROM test_table 
    WHERE LENGTH(name) < 6;
"""
cursor.execute(query)
result = cursor.fetchone()

# Вывод результата
print(f"Minimum age: {result[0]}, Maximum age: {result[1]}")

# Закрытие соединения
cursor.close()
connection.close()
