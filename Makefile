SHELL := /bin/bash
PY := python

.PHONY: help data ab causal report test clean

help:
	@echo "Targets:"
	@echo "  make data    - Generate synthetic A/B + observational datasets"
	@echo "  make ab      - Run A/B testing analysis (power, SRM, CUPED, sequential)"
	@echo "  make causal  - Run causal inference analysis (DiD, PS, IPW, AIPW)"
	@echo "  make report  - Compile a short combined report"
	@echo "  make test    - Run unit tests"
	@echo "  make clean   - Remove artifacts"

data:
	$(PY) scripts/build_data.py

ab:
	$(PY) scripts/run_ab_analysis.py

causal:
	$(PY) scripts/run_causal_analysis.py

report:
	$(PY) scripts/compile_report.py

test:
	pytest -q

clean:
	rm -rf data/processed/* reports/*
	@echo "Cleaned."
