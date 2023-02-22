"""
Test the fibonacci function.
"""

from shared.fibonacci import fibonacci


def test_fibonacci():
    """
    Test the fibonacci function.
    """
    value_fibonacci = fibonacci(10)
    assert value_fibonacci == 89
