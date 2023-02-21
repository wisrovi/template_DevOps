"""
fibonacci.py: Fibonacci number generator
"""


def fibonacci(number: int) -> int:
    """
    Get the n-th Fibonacci number,
    starting with 0 and 1.
    """
    a_1, b_1 = 0, 1
    for _ in range(number):
        a_1, b_1 = b_1, a_1 + b_1
    return b_1  # BUG! should be a!
