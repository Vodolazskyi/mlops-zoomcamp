.PHONY: download-poetry
download-poetry:
	curl -sSL https://install.python-poetry.org | python3 -

.PHONY: install
install:
	poetry install
	poetry run pre-commit install

.PHONY: requirements
requirements:
	poetry export --without-hashes -o requirements.txt

.PHONY: requirements-dev
requirements-dev:
	poetry export --without-hashes --dev -o requirements-dev.txt

.PHONY: test
test:
	poetry run pytest tests/
