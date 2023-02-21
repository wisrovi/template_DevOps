from shared.fibonacci import fibonacci


def test_fibonacci():
    a = fibonacci(10)
    assert a == 89