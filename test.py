import sqlite3
con=sqlite3.connect("store.db")
cur = con.cursor()
cur.execute("SELECT * from product")
print cur.fetchone()