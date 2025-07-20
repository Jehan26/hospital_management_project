
import mysql.connector

def connect_to_db():
    return mysql.connector.connect(
        host="localhost",
        user="your_username",
        password="your_password",
        database="hospital_db"
    )

def fetch_patients():
    conn = connect_to_db()
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM patients")
    for row in cursor.fetchall():
        print(row)
    cursor.close()
    conn.close()

if __name__ == "__main__":
    fetch_patients()
