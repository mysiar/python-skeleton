SHELL := /bin/bash

test::
	python -m unittest discover tests
.PHONY: test

lint::
	pylint src/ tests/ || true
.PHONY: lint

venv::
	python3 -m venv venv
.PHONY: venv

pip::
	pip install -r requirements.txt
	pip install -r requirements.dev.txt
PHONY: pip

