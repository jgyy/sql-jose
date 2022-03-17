"""
coding questions 1
"""
from random import randint


def large_cont_sum(arr):
    """
    largest continuous sum function
    """
    if len(arr) == 0:
        return 0
    max_sum = arr[0]
    current_sum = arr[0]
    for num in arr[1:]:
        current_sum = max(current_sum + num, num)
        max_sum = max(current_sum, max_sum)
    return max_sum


lists = [randint(-(10**4), 10**4) for _ in range(randint(0, 10**3))]
print(lists)
print(large_cont_sum(lists))
