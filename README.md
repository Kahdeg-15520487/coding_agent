# Coding Agent

OpenCode web server deployed on k3s via ArgoCD.

## Deploying

1. Create the secret with server password:

```bash
kubectl create secret generic coding-agent-secret \
  --namespace=coding-agent \
  --from-literal=server-password='your-choice-here'
```

2. Create the namespace:

```bash
kubectl create namespace coding-agent
```

3. ArgoCD will auto-sync from this repo.

## Access

https://opencode.minhnguyenle.net — log in with username `opencode` and your password.
