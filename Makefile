MAKEFLAGS += --always-make

build:
	docker-compose build

up: build
	docker-compose up -d sidecar

upall: down build
	docker-compose up -d

app-coverage:
	docker-compose run --rm sidecar python -m pytest --cov=../app --cov-report html:report_DevOps/cov_html --cov-fail-under=100 --cov-config=config_DevOps/pytest.ini

app-lint:
	docker-compose run --rm sidecar python -m pylint ../app --evaluation="max(0, 0 if fatal else 10.0 - ((float(5 * error + warning + refactor + convention) / statement) * 10))" --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" > src/config_DevOps/.pylint_cache/pylint-report.txt --reports=n --confidence=HIGH,CONTROL_FLOW,INFERENCE,INFERENCE_FAILURE --persistent=true --output-format=json:report_DevOps/pylint.json,text:report_DevOps/pylint.txt,colorized

app-lint-graph:
	docker-compose run --rm sidecar python config_DevOps/generate_graph.py

app-flake8:
	docker-compose run --rm sidecar python -m flake8 ../app

app-pyflake:
	docker-compose run --rm sidecar pyflakes ../app

app-test-report-html:
	docker-compose run --rm sidecar python -m pytest --html=report_DevOps/pytest/pytest.html --self-contained-html ../app

app-test-report:
	docker-compose run --rm sidecar python -m pytest . > src/report_DevOps/pytest/pytest.txt

app-test-dev:
	docker-compose run --rm sidecar ptw --config config_DevOps/pytest.ini

down:
	docker-compose down

sidecar-bash:
	docker-compose run --rm sidecar bash

app-requirements:
	docker-compose run --rm sidecar pip freeze > src/requirements.txt

vm-create:
	python3.8 -m virtualenv ../.env_template

vm-start:
	source  ../.env_template/bin/activate

vm-install: vm-start
	pip install -r requirements.txt

vm-stop:
	deactivate