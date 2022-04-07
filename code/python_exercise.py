# 2. Automate repeating tasks using Python “for” loops.
sum = 0
for x in range(101):
    sum = sum + x
print(sum)

# 3. Break up work into smaller components using Python functions.
import math
from turtle import st
def quadratic(a, b, c):
    if not (isinstance(a,(int,float)) and isinstance(b,(int,float)) and isinstance(c,(int,float))) :
        raise TypeError('bad operand type')
    if b**2 < 4*a*c and a != 0:
        print('there is no real soulution')
        return None
    x1 = (-b + math.sqrt(b**2 - 4*a*c))/(2*a)
    x2 = (-b - math.sqrt(b**2 - 4*a*c))/(2*a)
    if x1 == x2 :
        return x1
    else:
        return x1,x2
print(quadratic(1,1,1))

# 4. Use Python “lists” and “dictionaries” appropriately. Demonstrate one of the two.
## (1) lists
students_list = ['Michael', 'Bob', 'Tracy']
print(len(students_list))
print(students_list[1])
## (2)dictioanaries
students_dic = {'Michael':101, 'Bob':102, 'Tracy':103}
print(students_dic['Michael'])

