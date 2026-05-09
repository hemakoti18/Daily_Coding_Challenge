

# data :
salary = 50000

rent = 12000

food = 8000

transport = 3000

entertainment = 4000

"""
Tasks

  Task 1: Total Expenses 
  
• Use arithmetic operators to calculate total expenses.

"""

total_expenses = salary + rent + food + transport + entertainment
print(f"Total Expenses : {total_expenses}")

"""  
**Task 2: Savings Calculation** 

• Calculate savings using:  
savings = salary - total_expenses  

"""
savings = salary - total_expenses
print(f"Savings : {savings}")

"""
  **Task 3: Expense Comparison** 

• Check:  
o Is rent greater than food expense?  
o Is transport less than entertainment?  
Use comparison operators. 

"""
# 2. Comparison (==, !=, >, <)

# Is rent greater than food expense?
if rent > food:
  print(f"(Rent : {rent} > food : {food}) =  Rent is greater than food expenses")
else:
  print(f"Rent is not greater than food expenses")


# Is transport less than entertainment?
if transport < entertainment:
  print(f"(Transport : {transport} < Entertaiment : {entertainment}) = Trnasport is less than entertaiment")
else:
  print(f"Transport is not less than entertainment")

"""
**Task 4: Financial Condition Check** 
• If savings:  
o Greater than 10,000 → "Good Saving"  
o Between 5,000 and 10,000 → "Average Saving"  
o Less than 5,000 → "Low Saving"  
Use logical operators (and, or). 

"""
if salary > 10000:
  print("Good Saving")
elif salary >= 5000 and salary <= 10000:
  print("Average Saving")
else:
  print("Low Saving")


"""
  **Task 5: Bonus Update** 
  
• Increase salary by 10% using assignment operators:  
salary += salary * 0.10 

"""
bonus = salary * 0.10
salary += bonus
print(f"Salary Bonus : {bonus}")
print(f"Total Salary : {salary}")