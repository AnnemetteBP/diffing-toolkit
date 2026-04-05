#!/usr/bin/env bash
set -euo pipefail

# Separate output tree so quantization experiments do not mix with model-organisms runs.
RESULTS_BASE_DIR="${RESULTS_BASE_DIR:-./model-organisms/quantization/diffing_results}"
HYDRA_BASE_DIR="${HYDRA_BASE_DIR:-./model-organisms/quantization/hydra}"

uv run python main.py \
  pipeline.mode=diffing \
  model=llama3_8B_Instruct \
  organism=llama3_bitnet_compare \
  diffing/method=logitdiff_quantization \
  diffing.results_base_dir="${RESULTS_BASE_DIR}" \
  pipeline.output_dir="${HYDRA_BASE_DIR}/\${now:%Y-%m-%d}/\${now:%H-%M-%S}" \
  wandb.enabled=false \
  "$@"
