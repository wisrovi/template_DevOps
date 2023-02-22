"""
fibonacci.py: Fibonacci number generator
"""


#  Copyright (c) 2023.
#
#  software created by https://github.com/wisrovi/
#
#  Contact me https://www.linkedin.com/in/wisrovi-rodriguez/
#
#


def fibonacci(number: int) -> int:
    """
    Get the n-th Fibonacci number,
    starting with 0 and 1.
    is possible to use the generator expression
    """
    a_1, b_1 = 0, 1
    for _ in range(number):
        a_1, b_1 = b_1, a_1 + b_1
    return b_1  # BUG! should be a !
