# nginx-s3-gateway-chart
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/olopost)](https://artifacthub.io/packages/search?repo=olopost)

This chart deploy Nginx S3 gateway with customizable configuration

## How to add this helm repository

``` sh
helm repo add olopost https://olopost.github.io/nginx-s3-gateway-chart
```

to verify you can type the following command

``` console
$ helm repo list

NAME         	URL
olopost      	https://olopost.github.io/nginx-s3-gateway-chart
```

## To deploy the helm

``` sh
helm install nginx-s3 olopost/nginx-s3 -f values.yaml
```

# nginx-s3

![Version: 0.1.7](https://img.shields.io/badge/Version-0.1.7-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: latest-20241230](https://img.shields.io/badge/AppVersion-latest--20241230-informational?style=flat-square)

Nginx S3 gateway

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"ghcr.io/nginxinc/nginx-s3-gateway/nginx-oss-s3-gateway"` |  |
| image.tag | string | `"unprivileged-oss"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.className | string | `""` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.hosts[0].paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `""` |  |
| nginx.extraEnvs | list | `[]` |  |
| nginx.s3.accessKey | string | `"access"` |  |
| nginx.s3.allowDirectoryListing | bool | `false` |  |
| nginx.s3.awsSigsVersion | int | `4` |  |
| nginx.s3.awsregion | string | `"fra"` |  |
| nginx.s3.bucketName | string | `"name"` |  |
| nginx.s3.debug | bool | `false` |  |
| nginx.s3.provideIndexPage | bool | `false` |  |
| nginx.s3.region | string | `"fra"` |  |
| nginx.s3.secretKey | string | `"secret"` |  |
| nginx.s3.server.host | string | `"localhost"` |  |
| nginx.s3.server.port | int | `443` |  |
| nginx.s3.server.proto | string | `"https"` |  |
| nginx.s3.style | string | `"virtual"` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |

