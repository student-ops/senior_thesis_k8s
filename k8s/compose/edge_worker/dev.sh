# kubectl delete pods,svc,deployment,daemonset,replicaset,statefulset --all

kubectl create configmap telegraf-config --from-file ../../apps/telegraf/telegraf.conf  -o yaml --dry-run=client | kubectl apply -f -

kubectl create configmap telegraf-backup-config --from-file ../../apps/telegraf_backup/telegraf.conf  -o yaml --dry-run=client | kubectl apply -f -

# kubectl create configmap kapacitor-config --from-file ../apps/kapacitor/kapacitor.conf  -o yaml --dry-run=client | kubectl apply -f -

# kubectl create configmap kapacitor-tick --from-file ../apps/kapacitor/example.tick  -o yaml --dry-run=client | kubectl apply -f -

kubectl apply -f ./composed.yaml