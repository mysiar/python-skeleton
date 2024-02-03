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

# Docker
up::
	$(MAKE) down || true
	docker-compose rm -f || true
	docker-compose up --build -d
PHONY: up

enter::
	docker-compose exec anaconda /bin/bash

down::
	docker-compose down
