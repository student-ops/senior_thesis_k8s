export bucket_id=$(kubectl exec -it $(kubectl get pod | grep telegraf | awk '!/NAME/ {print $1}' ) -c influxdb -- sh -c 'influx  bucket list' | grep some_data | awk ' {print $1}')
kubectl exec -it $(kubectl get pod | grep telegraf | awk '!/NAME/ {print $1}' ) -c influxdb -- sh -c "
    influx v1 dbrp create \
      --db source-db \
      --rp source-rp \
      --bucket-id \"$bucket_id\" \
      --default"

export bucket_id=$(kubectl exec -it $(kubectl get pod | grep central-db | awk '!/NAME/ {print $1}' ) -c influxdb-central -- sh -c 'influx  bucket list' | grep some_data | awk ' {print $1}')
kubectl exec -it $(kubectl get pod | grep central-db | awk '!/NAME/ {print $1}' ) -c influxdb-central -- sh -c "
    influx v1 dbrp create \
      --db destination-db \
      --rp destination-rp \
      --bucket-id \"$bucket_id\" \
      --default"


