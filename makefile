up: 
	@echo "Creating configmap for telegraf"
	kubectl create configmap telegraf-config --from-file=./k8s/apps/telegraf/telegraf.conf
	@echo "Creating Pod auto scaler"
	kubectl apply -f ./k8s/apps/telegraf/scaler.yaml
	@echo "Creating pod for telegraf"
	kubectl apply -f ./k8s/apps/telegraf/composed.yaml