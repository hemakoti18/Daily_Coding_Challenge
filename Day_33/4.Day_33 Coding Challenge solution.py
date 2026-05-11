"""
Coding Challenge  
  Level 1: Placement Thinking 
1. Number Guessing Game  
• Store a secret number (e.g., 7)  
• Ask user to guess  
• If guess is:  
o Low → print "Too Low"  
o High → print "Too High"  
o Correct → "You Won!" and stop  
Concept: infinite while + if 

"""
secret_number = 7

while True:
    guess_number = int(input("Enter a number: "))

    if guess_number < secret_number:
        print(f"Entered Number {guess_number} is Too Low")
    elif guess_number > secret_number:
        print(f"Entered Number {guess_number} is Too High")
    else:
        print(f"You Won")
        break

"""
2. Reverse a Number 
Input: 1234 
Output: 4321 
 Use while loop 

"""
num = 1234
reversed_num = 0 # 4 * 10 = 40 + 3 = 43 | 43*10 = 430 + 2 = 432 | 432 * 10 = 4320 + 1 = 4321
while num > 0:
    last_digit = num % 10 # 1234 % 10 .... 4, 3, 2, 1
    reversed_num = (reversed_num * 10) + last_digit
    num = num // 10
print(f"Reversed Number : {reversed_num}")

"""
3. Count Digits in Number 
Input: 56789 
Output: 5 
 Hint: keep dividing by 10 

"""
numbers = int(input("Enter number to count digits : "))
count = 0
while numbers > 0:
    count += 1
    numbers = numbers // 10
print(f"Count of Digits in Number : {count}")

"""
  Level 2: Real-World Scenario (Data Analyst Thinking) 
4. Sales Threshold Checker  
You have sales values: 
sales = [1200, 800, 1500, 400, 2000] 
 
Task: 
• Print only sales greater than 1000  
• Count how many such sales exist  
Concept: loop + condition filtering (real analytics logic) 

"""
sales = [1200, 800, 1500, 400, 2000]
new_sales = []
for sale in sales:
    if sale > 1000:
        new_sales.append(sale)
count = len(new_sales)
print(f"Sales greater than 1000 : {new_sales}")
print(f"Count of new_sales : {count}")


"""
2. Continuous Data Entry System 
Keep asking user to enter numbers: 
• Stop only when user enters 0  
• Print total sum  
 This is how real systems collect streaming data 

"""
num = 0
add_num = 0

while True:
    enter_num = int(input("Enter Number (Type 0 to Stop): "))
    
    if enter_num == num:
        print(f"Total Sum: {add_num}")
        break
    else:
        add_num += enter_num # Add to total only if it's not the stop number
        print(f"Current Sum: {add_num}")
        print("Try again")

