build-chart:
	helm package -d nginx-s3-gateway  charts/nginx-s3-gateway
	helm repo index .
	helm-docs
	cp README.md.tmpl README.md
	cat charts/nginx-s3-gateway/README.md >> README.md
