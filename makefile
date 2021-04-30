SHELL := /bin/bash
DIR := $(strip $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST)))))

venv = source ./venv/bin/activate;


mac-install:
	python3 -m venv venv; \
	$(venv) \
	pip3 install -r requirements.txt;

server:
	$(venv) \
	export FLASK_APP=app/server.py; \
	export FLASK_ENV=development; \
	open 'http://127.0.0.1:5000'; \
	flask run;

lint:
	$(venv) \
	black ./; \
	mypy ./

tests:
	$(venv) \
	echo "running tests!"
	python -m unittest discover ./test;

docker-dev-server:
	echo "Running server in Docker" \
	docker build -f ./Dockerfile.dev . -t flask-starter-dev:v1; \
	docker run -p 5001:5000 --mount type=bind,source="$(DIR)/app",target=/app/app flask-starter-dev:v1; \
