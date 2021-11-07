# Create new namespace
sudo k3s kubectl create namespace awx

# Create new `awx-operator`
sudo k3s kubectl apply -f awx-operator.yaml -n awx
sleep 120

# Create `awx` with custom requirements file.
sudo k3s kubectl apply -f awx.yaml -n awx

# Wait for awx to be install successfully.
sudo k3s kubectl logs -f deployments/awx-operator -n awx
