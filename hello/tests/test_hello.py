"Unit tests"

from hello.main import more_hello, more_hello_two

def test_more_hello():
    "more hello should return hi"
    assert more_hello() == "hi"


def test_more_hello_two():
    "more hello should return hi"
    assert more_hello_two() == "bar"
