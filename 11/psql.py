"""
Psycopg2 Example Usage
"""
import psycopg2 as pg2

conn = pg2.connect(database="jgyy", user="jgyy", password="")
cur = conn.cursor()
cur.execute("SELECT * FROM payment;")
print(cur.fetchone())
conn.close()
