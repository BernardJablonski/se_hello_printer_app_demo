.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt


.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt

run:
	python main.py

test:
	PYTHONPATH=. py.test

lint:
	flake8 hello_world test

testverbose:
	PYTHONPATH=. py.test --verbose -s
