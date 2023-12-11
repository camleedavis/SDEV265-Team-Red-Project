import tkinter as tk
import csv
import sqlite3

def create_connection():
    # create a database connection to the SQLite database
    conn = None
    try:
        conn = sqlite3.connect('grocery.db')
        print("Connection successful!")
    except sqlite3.Error as e:
        print(e)

    return conn

# Function to write transaction to Database
def new_transaction(transid: int, empid: int, custid: int, prodid: int, quan: int, totalamt: float, dte: str):
    conn = create_connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute('''INSERT INTO Transactions(transaction_id, customer_id, employee_id, product_id, quantity, total_amount, date)
                            VALUES (?, ?, ?, ?, ?, ?, ?)''', (transid, custid, empid, prodid, quan, totalamt, dte))
            conn.commit()
            print("Transaction added successfully!")
        except sqlite3.Error as e:
            print(e)
        finally:
            conn.close()
    else:
        print("Error: Unable to establish a database connection.")

# Example usage:
# new_transaction(1, 101, 201, 301, 5, 50.0, '2023-12-11')

# Create CSV files for each table (Sample data)
def create_csv_files():
    transactions_data = [
        (1, 1, 1, 2, 2400.00, '2023-01-01'),
        (2, 2, 2, 5, 25.00, '2023-01-02'),
        # Add more transaction data here
    ]

    with open('transactions.csv', mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['transaction_id', 'customer_id', 'employee_id', 'product_id', 'quantity', 'total_amount', 'date'])
        writer.writerows(transactions_data)

    # Similarly, create CSV files for other tables (Employee, Customer, Inventory)
    # ...

# Function to retrieve items from the CSV file
def retrieve_items(table_name):
    items = []
    with open(f'{table_name}.csv', newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            items.append(row)
    return items

# Function to display items in the GUI
def display_items_in_gui(items):
    for item in items:
        listbox.insert(tk.END, item)  # Insert item into the listbox

# Function to open new window based on table
def open_new_window(table_name):
    items = retrieve_items(table_name)
    display_items_in_gui(items)

# Create CSV files for each table
create_csv_files()

# GUI
root = tk.Tk()
root.title("Point Of Sale Utility")
root.geometry("400x300")
footer_label = tk.Label(root, text="Team Red", fg="red")
footer_label.pack(side=tk.BOTTOM, pady=10)

listbox = tk.Listbox(root, width=30, height=10)
listbox.pack()

button_transactions = tk.Button(root, text="Transactions", command=lambda: open_new_window("transactions"))
button_transactions.pack()

button_employee = tk.Button(root, text="Employee", command=lambda: open_new_window("employee"))
button_employee.pack()

button_kiosk = tk.Button(root, text="Customer", command=lambda: open_new_window("customer"))
button_kiosk.pack()

button_inventory = tk.Button(root, text="Inventory", command=lambda: open_new_window("Inventory"))
button_inventory.pack()

root.mainloop()
