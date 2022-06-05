.PHONY: deps test

run:
	python main.py

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt

test:
	PYTHONPATH=. py.test

lint:
	flake8 hello_world test

testverbose:
	PYTHONPATH=. py.test --verbose -s
