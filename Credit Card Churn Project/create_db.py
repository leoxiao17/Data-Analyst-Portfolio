import pandas as pd
import sqlite3

# Read CSV
df = pd.read_csv("data/BankChurners.csv")

# Create SQLite database
conn = sqlite3.connect("credit_churn.db")

# Write dataframe to SQL table
df.to_sql(
    "customers",
    conn,
    if_exists="replace",
    index=False
)

conn.close()

print("Database created: credit_churn.db")