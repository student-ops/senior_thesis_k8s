kubectl delete pods,svc,deployment,daemonset,replicaset,statefulset --all
helm uninstall prometheus
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack --namespace=prometheus --create-namespace --wait


helm install my-prometheus prometheus-community/prometheus

kubectl apply -f ../apps/grafana/grafana-pvm.yaml