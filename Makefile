install:
	pip install --upgrade pip \
	&& pip install -r requirements.txt
test:
	coverage run -m pytest -vv hello/tests && coverage report
format:
	black *.py
lint:
	pylint --disable=R,C hello
all: install lint test