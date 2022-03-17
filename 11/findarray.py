"""
coding questions 4
"""
from random import randint


def finder(arr1, arr2):
    """
    find missing value function
    """
    arr1.sort()
    arr2.sort()
    for num1, num2 in zip(arr1, arr2):
        if num1 != num2:
            return num1
    return arr1[-1]


LEN = randint(1, 99)
lists1 = [randint(0, 99) for _ in range(LEN)]
lists2 = [*lists1]
del lists2[randint(0, LEN - 1)]
print(lists1, lists2)
print(finder(lists1, lists2))
