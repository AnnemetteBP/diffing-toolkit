# Quantization Runs

This directory is reserved for quantization-specific experiments so they do not
collide with the main `model-organisms` diffing outputs.

Default layout:

- `diffing_results/`: LogitDiff and other method outputs
- `hydra/`: Hydra run metadata and logs

Use the helper script from the repo root:

```bash
./run_quantization_logitdiff.sh
```
