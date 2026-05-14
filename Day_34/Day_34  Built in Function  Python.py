"""
Concepts: set(), list, loop 
 Problem: 
Given a list of student IDs, remove duplicates without changing order. 
ids = [101, 102, 101, 103, 102, 104] 
 Expected Output: 
[101, 102, 103, 104] 

"""
# sorted and set
ids = [101, 102, 101, 103, 102, 104]
new_list = sorted(set(ids))
print(new_list)

# dictionary
new_list1 = list(dict.fromkeys(ids))
print(new_list)

# for loop
new_list2 = []
for num  in ids:
    if num not in new_list2:
        new_list2.append(num)
print(f"New List : {new_list2}")

# while loop
new_list3 = []
index = 0
while index < len(ids):
    sale_id = ids[index]
    if sale_id not in new_list3:
        new_list3.append(sale_id)
    index += 1
print(f"New List : {new_list3}")
        

"""
Concepts: dict, get(), loop 
Problem: 
Count how many times each product is sold. 
products = ["apple", "banana", "apple", "orange", "banana", "apple"] 
 Expected Output: 
{'apple': 3, 'banana': 2, 'orange': 1} 

"""  
products = ["apple", "banana", "apple", "orange", "banana", "apple"]
prod_count = {}

for product in products:
    if product not in prod_count:
        prod_count[product] = 1
    else:
        prod_count[product] += 1
print(prod_count)

" get.() ela pani chesthundhi ani intro"
"""
ఎందుకు వాడతారు? (Why) - 
అసలు కారణాలు:Error రాకుండా ఉండటానికి (Avoid KeyError):
సాధారణంగా my_dict["price"] అని పిలిచినప్పుడు, ఒకవేళ "price" అనే కీ లేకపోతే ప్రోగ్రామ్ Crash అయిపోతుంది.
కానీ my_dict.get("price") అని వాడితే, కీ లేకపోయినా ప్రోగ్రామ్ ఆగదు, జస్ట్ None అని రిటర్న్ చేస్తుంది.
Default Value సెట్ చేయడానికి:కీ లేనప్పుడు ఒక నెంబర్ లేదా ఒక మెసేజ్ రావాలి అనుకుంటే ఇది వాడతాం.
ఉదాహరణకు: sales.get("apple", 0). 
ఇక్కడ ఆపిల్ లేకపోతే అది 0 అని తీసుకుంటుంది.

"""

user = {"name": "Suresh"}
print(user.get("age", "Not Mentioned")) 
# ఇది Error ఇవ్వదు. "Not Mentioned" అని ప్రింట్ చేస్తుంది.

""" Difference 
user = {"name": "Suresh"}
print(user["age"])  # ఇక్కడ Error వచ్చేస్తుంది, ఎందుకంటే 'age' లేదు.

"""

# dictinary_name.get(key, default value)
prod_count = {}

# for loop
for prod in products:
    """
    Idhi internal ga sales_count['apple'] = sales_count['apple'] + 1 la pani chesthundhi. 
    Kani modalati saari key = 'apple' lenappudu direct ga + 1 assign chesthe Python KeyError throw chesthundhi (endhukante ethukodaniki patha value ledhu).
    """
    """
    Andhuké mana original code lo get(product, 0) + 1 ni vadatham. 
    Adhi patha value unte aa value ni, lenipudu 0 ni temporary ga theeskoni + 1 chesi, chivarlo key ki assign chesthundhi.
    """
    prod_count[prod] = prod_count.get(prod,0) + 1
print(prod_count)

# 1. మెషిన్ ని తయారు చేస్తున్నాం (Function Definition)
def book_tickets(movie_name, count):
    ticket_price = 150  # ఒక్క టికెట్ ధర 150 రూపాయలు
    total_cost = ticket_price * count
    
    print(f"--- Ticket Confirmed! ---")
    print(f"Movie: {movie_name}")
    print(f"Tickets: {count}")
    
    return total_cost # మెషిన్ మనకి అమౌంట్ ని తిరిగి ఇస్తుంది

# 2. మెషిన్ ని వాడుతున్నాం (Function Call)
# 'RRR' సినిమాకి 3 టికెట్లు కావాలి
bill = book_tickets("RRR", 3)

print(f"Please pay: {bill} Rupees")

"""
Find Top Scorer 
Concepts: max(), dict 
Problem: 
Find the student with highest marks. 
marks = {"A": 85, "B": 92, "C": 88}  

 Expected Output: 
B 

"""
marks = {"A": 85, "B": 92, "C": 88}

# get() method
# Marks values base cheskoni maximum KEY ni vethukuthundhi
top_student = max(marks, key=marks.get)

print(f"Top Scorer Name: {top_student}") # Output: B
print(f"Top Scorer Marks: {marks[top_student]}") # Output: 92

# for loop
marks = {"A": 85, "B": 92, "C": 88}

top_student = None
max_marks = 0 # Modatlo 0 anukuntam

# .items() loop key mariyu value renditini okesari isthundhi
for student, score in marks.items():
    if score > max_marks:
        max_marks = score
        top_student = student

print(f"Top Scorer: {top_student} with {max_marks} marks")
# Output: Top Scorer: B with 92 marks

"""
Common Elements in Two Lists 
Concepts: set(), intersection() 
 Problem: 
Find common skills between two candidates. 
skills1 = ["Python", "SQL", "Excel"] 
skills2 = ["SQL", "Power BI", "Python"] 
 Expected Output: 
['Python', 'SQL'] 

"""
skills1 = ["Python", "SQL", "Excel"] 
skills2 = ["SQL", "Power BI", "Python"] 
set1 = set(skills1)
set2 = set(skills2)
skills = list(sorted(set1.intersection(set2)))
print(skills)

# for loop
intersection_list = []
for item in skills1:
    if item in skills2:
        intersection_list.append(item)
print(intersection_list)

# lambda use
marks_list = [("A", 85), ("B", 92), ("C", 88)]

# key=lambda x: x[1] ante: "Prathi pair (x) lo unna index 1 (marks) ni calculation ki thesko" ani ardham.
top_student = max(marks_list, key=lambda x: x[1])

print(top_student) # Output: ('B', 92)


"""
Sort Dictionary by Values 
Concepts: sorted(), lambda 
 Problem: 
Sort products by price. 
prices = {"apple": 50, "banana": 20, "orange": 30} 
 Expected Output: 
[('banana', 20), ('orange', 30), ('apple', 50)] 

"""
# pattern only key
prices = {"apple": 50, "banana": 20, "orange": 30} 
prod_list = sorted(prices, key=lambda x:prices[x])
print(prod_list)

# pattern key value
prices = {"apple": 50, "banana": 20, "orange": 30} 
prod_list = sorted(prices.items(), key=lambda x:x[1])
print(prod_list)