#!/usr/bin/env bash
# Same engine as CI (.github/workflows/build-cv.yml); falls back to xelatex.
set -euo pipefail
cd "$(dirname "$0")"
if command -v tectonic >/dev/null; then
  tectonic phillips_cv.tex
else
  xelatex phillips_cv.tex && xelatex phillips_cv.tex  # second pass resolves LastPage
fi
