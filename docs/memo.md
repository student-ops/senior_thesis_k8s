curl --request GET http://localhost:8086/query?bucket=source-db -H "Authorization: 4eYvsu8wZCJ6tKuE2sxvFHkvYFwSMVK0011hEEiojvejzpSaij86vYQomN_12au6eK-2MZ6Knr-Sax201y70w==" --data-urlencode "q=SELECT rssi FROM source-db.source-rp.mqttconsumer"

influx v1 auth create \
 --read-bucket 2bc87a56c6dacb67 \
 --write-bucket 2bc87a56c6dacb67 \
 --username user

influx v1 auth create \
 --read-bucket ecad91e19733e1f2 \
 --write-bucket ecad91e19733e1f2 \
 --username user
