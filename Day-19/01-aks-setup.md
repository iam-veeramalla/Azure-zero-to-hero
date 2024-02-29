# AKS setup using CLI

## Create Azure Resource Group

```
az group create --name keyvault-demo --location eastus
```

## AKS Creation and Configuration

### Create an AKS cluster with Azure Key Vault provider for Secrets Store CSI Driver support

```
az aks create --name keyvault-demo-cluster -g keyvault-demo --node-count 1 --enable-addons azure-keyvault-secrets-provider --enable-oidc-issuer --enable-workload-identity
```

### Get the Kubernetes cluster credentials (Update kubeconfig)

```
az aks get-credentials --resource-group keyvault-demo --name keyvault-demo-cluster
```

#### Verify that each node in your cluster's node pool has a Secrets Store CSI Driver pod and a Secrets Store Provider Azure pod running

```
kubectl get pods -n kube-system -l 'app in (secrets-store-csi-driver,secrets-store-provider-azure)' -o wide
```

## Keyvault creation and configuration

- Create a key vault with Azure role-based access control (Azure RBAC).

```
az keyvault create -n aks-demo-abhi -g keyvault-demo -l eastus --enable-rbac-authorization
```