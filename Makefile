.PHONY: test check

build:
	python3 setup.py sdist bdist_wheel

pypi:
	twine upload dist/*

clean:
	rm -rf pymds.egg-info dist build

test:
	python3 test/test-*.py

check:
	pyflakes */*.py
	pycodestyle */*.py
