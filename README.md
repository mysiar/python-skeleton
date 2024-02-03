# Basic Python skeleton project

## Local development with `venv`
* run `make venv` to create `venv`
* run `. ./venv/bin/activate` to activate `venv`
* run `make pip` to install dependencies
* run `make lint` to lint code
* run `make test` to run tests

## Development in Docker
* run `make up`
* open in browser http://127.0.0.1:81
* run `make d-pip` to install dependencies in container
* run `make d-lint` to lint code in container
* run `make d-test` to run tests in container

