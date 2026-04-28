#!/usr/bin/env bash
set -euo pipefail

# ── Inspect SBOM attached to an image ─────────────────────────────
# Usage: ./scripts/inspect-sbom.sh <image-with-digest>

IMAGE="${1:?Usage: $0 <image-with-digest>}"

echo "==> Downloading SBOM for: ${IMAGE}"
cosign download sbom "${IMAGE}" > /tmp/sbom.spdx.json

echo ""
echo "==> Total packages in SBOM:"
jq '.packages | length' /tmp/sbom.spdx.json

echo ""
echo "==> First 20 package names:"
jq -r '.packages[].name' /tmp/sbom.spdx.json | head -20

echo ""
echo "==> Full SBOM saved to /tmp/sbom.spdx.json"
