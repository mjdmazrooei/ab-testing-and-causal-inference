# A/B Testing & Causal Inference (End-to-End, GitHub-Ready)

A portfolio-grade project that demonstrates **experimental design**, **robust A/B analysis**, and **causal inference for observational data** — with reproducible pipelines, reports, and tests.

## What’s Included

### A/B Testing (Experimentation)
- **Metric design**: conversion, revenue per user, retention (synthetic but realistic)
- **Power analysis & MDE** (minimum detectable effect)
- **Randomization checks** + **sample ratio mismatch** (SRM) test
- **Frequentist analysis**: difference in means/proportions + confidence intervals
- **Variance reduction**: **CUPED** using pre-experiment covariates
- **Sequential monitoring**: alpha-spending boundary (simple, transparent)
- **Guardrails**: multiple metrics + false discovery control (Benjamini–Hochberg)

### Causal Inference (Observational)
- **Difference-in-Differences (DiD)** with parallel-trends diagnostics
- **Propensity scores**: logistic regression + overlap checks
- **IPW** (inverse propensity weighting) estimator
- **Doubly Robust (AIPW)** estimator for ATE / ATT
- **Sensitivity checks**: trimming extreme weights + subgroup analysis

### Outputs
- `reports/ab_summary.json`
- `reports/ab_plots.png`
- `reports/causal_summary.json`
- `reports/causal_plots.png`
- `reports/model_cards/` (method + assumptions + diagnostics)

---

## Quickstart

```bash
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -r requirements.txt

make data
make ab
make causal
make report
```

---

## Repo Structure
```
.
├── data/
│   ├── raw/                     # generated datasets
│   └── processed/
├── reports/                     # JSON summaries + plots + model cards
├── schemas/                     # data contracts
├── src/abci/
│   ├── config.py
│   ├── data.py                  # synthetic data generation
│   ├── ab_testing.py            # power, SRM, CUPED, sequential
│   ├── causal.py                # DiD, PS, IPW, AIPW
│   ├── diagnostics.py           # overlap, balance, plots
│   └── utils.py
├── scripts/                     # CLI entrypoints
├── tests/
├── Makefile
└── .github/workflows/ci.yml
```

---

## Notes on Rigor
This repo intentionally includes:
- explicit assumptions (SUTVA, ignorability, parallel trends)
- diagnostics (covariate balance, overlap, SRM)
- clear reporting artifacts suitable for product decisions

---

## License
MIT
