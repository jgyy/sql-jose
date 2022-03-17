"""
coding questions 2
"""
from string import ascii_letters
from random import randint, choice


def compress(strs):
    """
    compress function
    """
    run = ""
    length = len(strs)
    if length == 0:
        return "" + "1"
    if length == 1:
        return strs
    cnt = 1
    i = 1
    while i < length:
        if strs[i] == strs[i - 1]:
            cnt += 1
        else:
            run = run + strs[i - 1] + str(cnt)
            cnt = 1
        i += 1
    run = run + strs[i - 1] + str(cnt)
    return run


STRS = "".join([choice(ascii_letters) * randint(1, 9) for _ in range(randint(1, 99))])
print(STRS)
print(compress(STRS))
