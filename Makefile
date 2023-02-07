install:
	pip install --upgrade pip \
	&& pip install -r requirements.txt
test:
	coverage run -m pytest -vv test_hello.py && coverage report
format:
	black *.py
lint:
	pylint --disable=R,C hello.py
all: install lint test