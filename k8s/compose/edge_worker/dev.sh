# kubectl delete pods,svc,deployment,daemonset,replicaset,statefulset --all

kubectl create configmap telegraf-config --from-file $BASE/apps/telegraf/telegraf.conf  -o yaml --dry-run=client | kubectl apply -f -

kubectl create configmap telegraf-backup-config --from-file $BASE/apps/telegraf_backup/telegraf.conf  -o yaml --dry-run=client | kubectl apply -f -

kubectl apply -f $BASE/apps/grafana/grafana-edge.yaml

# kubectl create configmap kapacitor-config --from-file ../apps/kapacitor/kapacitor.conf  -o yaml --dry-run=client | kubectl apply -f -

# kubectl create configmap kapacitor-tick --from-file ../apps/kapacitor/example.tick  -o yaml --dry-run=client | kubectl apply -f -

kubectl apply -f $BASE/compose/edge_worker/composed.yaml

sleep 20

kubectl apply -f $BASE/apps/mqtt_publisher/mqtt_publisher.yaml

kubectl apply -f $BASE/apps/batch_worker/batch_worker.yaml