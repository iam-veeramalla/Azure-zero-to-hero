# Deploy Azure VM using Arm templates

### Create resource group if it does not exist 

```
az group create --name vscode --location 'Central US'
```

### Create virtual machine

Switch to the folder where you have the `01-create-vm.json` file available.

```
az deployment group create --resource-group vscode --template-file 01-create-vm.json
```