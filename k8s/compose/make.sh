helm uninstall my-prometheus
helm repo add my-prometheus https://prometheus-community.github.io/helm-charts
helm repo update
helm install my-prometheus prometheus-community/prometheus

kubectl apply -f ../apps/grafana/grafana-pvm.yaml