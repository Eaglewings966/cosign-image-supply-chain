#!/usr/bin/env bash
set -euo pipefail

# ── Verify a signed image against Rekor ───────────────────────────
# Usage: ./scripts/verify-image.sh <image-with-digest>
# Example: ./scripts/verify-image.sh 123456789.dkr.ecr.us-east-1.amazonaws.com/devops-demo-app@sha256:abc123

IMAGE="${1:?Usage: $0 <image-with-digest>}"
GITHUB_REPO="https://github.com/Eaglewings966/cosign-image-supply-chain"
OIDC_ISSUER="https://token.actions.githubusercontent.com"

echo "==> Verifying image: ${IMAGE}"

cosign verify \
  --certificate-identity-regexp="${GITHUB_REPO}" \
  --certificate-oidc-issuer="${OIDC_ISSUER}" \
  "${IMAGE}"

echo ""
echo "==> Signature verified successfully against Rekor transparency log."
