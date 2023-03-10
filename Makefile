install:
	pip install --upgrade pip \
	&& pip install -r requirements.txt
test:
	coverage run -m pytest -vv hello/tests && coverage report
format:
	black ./hello/*.py
lint:
	pylint --disable=R,C --recursive=y hello
all: install test