curl -sfL https://get.k3s.io | sh -

# Check for Ready node,takes maybe 30 seconds
sudo k3s kubectl get node
