#!/usr/bin/env bash
set -euo pipefail

# ── Full cluster health check ──────────────────────────────────────

echo "==> Kyverno pods"
kubectl get pods -n kyverno

echo ""
echo "==> Gatekeeper pods"
kubectl get pods -n gatekeeper-system

echo ""
echo "==> Policy Reporter pods"
kubectl get pods -n kyverno-policy-reporter

echo ""
echo "==> Kyverno ClusterPolicies"
kubectl get clusterpolicy

echo ""
echo "==> Gatekeeper ConstraintTemplates"
kubectl get constrainttemplate

echo ""
echo "==> Gatekeeper Constraints"
kubectl get constraints

echo ""
echo "==> demo-app pods"
kubectl get pods -n demo-app
