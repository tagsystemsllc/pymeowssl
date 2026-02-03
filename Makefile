.PHONY: install

all: wheel

wheel:
	rm -rf dist
	python -m build --no-isolation --wheel

install: wheel
	uv pip uninstall pyopenssl
	uv pip install dist/*.whl
