build-chart:
	helm package -d nginx-s3-gateway  charts/nginx-s3-gateway
	helm repo index .
