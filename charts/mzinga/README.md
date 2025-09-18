# mzinga

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.7.1](https://img.shields.io/badge/AppVersion-1.7.1-informational?style=flat-square)

A Helm chart for Kubernetes to deploy an m'zinga instance.

**Homepage:** <https://github.com/mzinga-io/mzinga-apps>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| newesis team | <newesis.support@newesis.com> | <https://www.newesis.com/#:~:text=as%2Da%2Dservice-,Our%20People> |

## Source Code

* <https://github.com/mzinga-io/helm-charts>
* <https://github.com/mzinga-io/mzinga-apps>

## Requirements

Kubernetes: `>=1.25.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | common | 2.31.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| basedns | string | `"mzinga.io"` |  |
| containerPort | int | `3000` |  |
| env | string | `"production"` |  |
| graphql_disable_displayground_in_production | string | `"1"` |  |
| tenant.name | string | `"demo"` |  |
| tenant.email | string | `"info@mzinga.io"` |  |
| tenant.env | string | `"prod"` |  |
| tenant.firstName | string | `"sample"` |  |
| tenant.lastName | string | `"tenant"` |  |
| tenant.password | string | `"84b60b91-628b-42e1-adf2-00c12482f27e"` |  |
| tenant.tier | string | `"basic"` |  |
| tenant.site.title | string | `"Demo frontend"` |  |
| tenant.site.titleSuffix | string | `"Demo frontend"` |  |
| tenant.site.description | string | `"Demo frontend"` |  |
| tenant.site.topCardList.title | string | `"Our Services"` |  |
| tenant.site.topCardList.tag | string | `"services"` |  |
| tenant.site.bottomCardList.title | string | `"Our People"` |  |
| tenant.site.bottomCardList.tag | string | `"people"` |  |
| tenant.site.topPage.title | string | `"About Us"` |  |
| tenant.site.topPage.slug | string | `"about-us"` |  |
| tenant.site.topPage.uri | string | `"/about-us"` |  |
| tenant.site.formPage.title | string | `"Contact Us"` |  |
| tenant.site.formPage.slug | string | `"contact-us"` |  |
| tenant.site.formPage.uri | string | `"/contact-us"` |  |
| nodePool.priority | string | `"Regular"` |  |
| nodePool.spot.tolerations[0].key | string | `"kubernetes.azure.com/scalesetpriority"` |  |
| nodePool.spot.tolerations[0].operator | string | `"Equal"` |  |
| nodePool.spot.tolerations[0].value | string | `"spot"` |  |
| nodePool.spot.tolerations[0].effect | string | `"NoSchedule"` |  |
| secret | string | `"cd9a7f30-e078-45fc-b6d2-9e4ebf6420ae"` |  |
| sendgridApiKey | string | `""` |  |
| publicServerURL | string | `"https://admin-demo.mzinga.io"` |  |
| cron_jobs.extensibility | string | `"ce-enabler"` |  |
| cron_jobs.scheduler | string | `"time-based-executions"` |  |
| cron_jobs.tolerations | list | `[]` |  |
| database.secretRef | string | `"mzinga-users-creds"` |  |
| database.serviceURI | string | `"mongodb-psmdb-db-newesis.mongodb.svc.cluster.local"` |  |
| database.additionalOptions.api | string | `"readPreference=secondary"` |  |
| database.additionalOptions.backoffice | string | `"readPreference=primary"` |  |
| database.additionalOptions.ws | string | `"readPreference=secondary"` |  |
| database.backup_enabled | bool | `true` |  |
| database.cron_jobs.username | string | `"backup"` |  |
| database.cron_jobs.password | string | `"backup123456"` |  |
| database.cron_jobs.configmap_scripts | string | `"mzinga-db-jobs-scripts"` |  |
| database.cron_jobs.secret | string | `"mzinga-db-jobs-secret"` |  |
| database.cron_jobs.azure_storage.account | string | `""` |  |
| database.cron_jobs.azure_storage.container | string | `""` |  |
| database.cron_jobs.azure_storage.prefix | string | `""` |  |
| database.cron_jobs.azure_storage.credentials_key | string | `""` |  |
| database.cron_jobs.backup | string | `"mzinga-db-backup-job"` |  |
| database.cron_jobs.restore | string | `"mzinga-db-restore-job"` |  |
| database.cron_jobs.scheduled_hour | int | `2` |  |
| database.cron_jobs.tolerations | list | `[]` |  |
| first_user_hook.name | string | `"mzinga-first-user"` |  |
| first_user_hook.debug | bool | `false` |  |
| first_user_hook.tolerations | list | `[]` |  |
| pvc_sync_hook.name | string | `"mzinga-pvc-sync"` |  |
| pvc_sync_hook.debug | bool | `false` |  |
| pvc_sync_hook.enabled | bool | `false` |  |
| pvc_sync_hook.tolerations | list | `[]` |  |
| copy_files_hook.enabled | bool | `false` |  |
| copy_files_hook.name | string | `"mzinga-copy-files"` |  |
| copy_files_hook.debug | bool | `false` |  |
| copy_files_hook.azuredevops_pat | string | `""` |  |
| copy_files_hook.tolerations | list | `[]` |  |
| scheduler.name | string | `"mzinga-scheduler"` |  |
| scheduler.debug | bool | `true` |  |
| common.enabled | bool | `true` |  |
| common.name | string | `"mzinga-common"` |  |
| backoffice.name | string | `"mzinga-bo"` |  |
| backoffice.replicas | int | `1` |  |
| backoffice.image.repository | string | `"mzinga/payload/backoffice"` |  |
| backoffice.image.tag | string | `"1.9.18"` |  |
| backoffice.image.registry | string | `"newesissrl.azurecr.io"` |  |
| backoffice.publicURL | string | `""` |  |
| backoffice.tolerations | list | `[]` |  |
| backoffice.ingress.class | string | `"nginx"` | Name of the ingress class that will be used when creating backoffice ingress resource. |
| backoffice.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| backoffice.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| backoffice.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| backoffice.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"100m"` |  |
| backoffice.affinity | object | `{}` | Affinities for MZinga backoffice service |
| backoffice.resources.requests.memory | string | `"250Mi"` |  |
| backoffice.resources.requests.cpu | float | `0.5` |  |
| backoffice.resources.limits.memory | string | `"500Mi"` |  |
| backoffice.resources.limits.cpu | int | `1` |  |
| backoffice.customization.PAYLOAD_PUBLIC_CUSTOM_ICON_SRC | string | `"https://via.placeholder.com/32x32/008000"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_CUSTOM_LOGO_SRC | string | `"https://via.placeholder.com/180x180/FFFF00"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_DISABLED_ENTITIES_SLUGS | string | `"organizations,projects,environments,assets"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_DISABLE_LOCAL_STRATEGY | string | `"0"` |  |
| backoffice.otel_log_level | string | `""` |  |
| backoffice.otel_console_exporter | string | `"1"` |  |
| api.name | string | `"mzinga-api"` |  |
| api.replicas | int | `1` |  |
| api.image.repository | string | `"mzinga/payload/api"` |  |
| api.image.tag | string | `"1.9.18"` |  |
| api.image.registry | string | `"newesissrl.azurecr.io"` |  |
| api.publicURL | string | `""` |  |
| api.api_key | string | `""` |  |
| api.tolerations | list | `[]` |  |
| api.ingress.class | string | `"nginx"` | Name of the ingress class that will be used when creating api ingress resource. |
| api.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| api.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| api.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| api.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"100m"` |  |
| api.affinity | object | `{}` | Affinities for MZinga api service |
| api.resources.requests.memory | string | `"250Mi"` |  |
| api.resources.requests.cpu | float | `0.5` |  |
| api.resources.limits.memory | string | `"500Mi"` |  |
| api.resources.limits.cpu | int | `1` |  |
| api.customization.PAYLOAD_PUBLIC_DISABLED_ENTITIES_SLUGS | string | `"organizations,projects,environments,assets"` |  |
| api.otel_log_level | string | `""` |  |
| api.otel_console_exporter | string | `"1"` |  |
| ws.enabled | bool | `false` | Enable WebSocket deployment |
| ws.name | string | `"mzinga-ws"` |  |
| ws.replicas | int | `1` |  |
| ws.image.repository | string | `"mzinga/payload/ws-service"` |  |
| ws.image.tag | string | `""` |  |
| ws.image.registry | string | `"newesissrl.azurecr.io"` |  |
| ws.publicURL | string | `""` |  |
| ws.tolerations | list | `[]` |  |
| ws.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| ws.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| ws.ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ws.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| ws.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"100m"` |  |
| ws.ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"7200"` |  |
| ws.ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"7200"` |  |
| ws.affinity | object | `{}` | Affinities for MZinga websocket service |
| ws.resources.requests.memory | string | `"250Mi"` |  |
| ws.resources.requests.cpu | float | `0.5` |  |
| ws.resources.limits.memory | string | `"500Mi"` |  |
| ws.resources.limits.cpu | int | `1` |  |
| ws.customization | object | `{}` |  |
| ws.otel_log_level | string | `""` |  |
| ws.otel_console_exporter | string | `"1"` |  |
| sampleFrontend.enabled | bool | `false` | Enable sample frontend for MZinga |
| sampleFrontend.name | string | `"mzinga-sample-fe"` |  |
| sampleFrontend.replicas | int | `1` |  |
| sampleFrontend.image.repository | string | `"mzinga/payload/sample-frontend"` |  |
| sampleFrontend.image.tag | string | `""` |  |
| sampleFrontend.image.registry | string | `"newesissrl.azurecr.io"` |  |
| sampleFrontend.ingress.class | string | `"nginx"` | Name of the ingress class that will be used when creating frontend ingress resource. |
| sampleFrontend.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| sampleFrontend.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| sampleFrontend.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| sampleFrontend.tolerations | list | `[]` |  |
| sampleFrontend.affinity | object | `{}` | Affinities for MZinga frontend service |
| sync.enabled | bool | `false` |  |
| sync.name | string | `"mzinga-to-zitadel"` |  |
| sync.replicas | int | `1` |  |
| sync.env | string | `"prod"` |  |
| sync.image.repository | string | `"mzinga-to-zitadel"` |  |
| sync.image.tag | string | `""` |  |
| sync.image.registry | string | `"newesissrl.azurecr.io"` |  |
| sync.otel.disableTracing | string | `"0"` |  |
| sync.otel.consoleExporter | string | `"1"` |  |
| sync.otel.logLevel | string | `"debug"` |  |
| sync.mzinga.apiKey | string | `""` |  |
| sync.repository.baseUrl | string | `"https://dev.azure.com/newesis/Code%20Name%20MZinga"` |  |
| sync.repository.instancesUrl | string | `"/_apis/git/repositories/infrastructure/items?download=false&api-version=7.1-preview.1&scopePath=/__instances__/mzinga-prod.tfvars.json"` |  |
| sync.repository.commitsUrl | string | `"/_apis/git/repositories/infrastructure/commits?searchCriteria.%24top=1&searchCriteria.itemVersion.version=main&api-version=7.1-preview.1"` |  |
| sync.repository.pushesUrl | string | `"/_apis/git/repositories/infrastructure/pushes?api-version=7.1-preview.2"` |  |
| sync.repository.queueUrl | string | `"/_apis/pipelines/59/runs?api-version=7.1-preview.1"` |  |
| sync.repository.pat | string | `""` |  |
| sync.zitadel.bearerToken | string | `""` |  |
| sync.nodePool.priority | string | `"Regular"` |  |
| sync.nodePool.spot.tolerations[0].key | string | `"kubernetes.azure.com/scalesetpriority"` |  |
| sync.nodePool.spot.tolerations[0].operator | string | `"Equal"` |  |
| sync.nodePool.spot.tolerations[0].value | string | `"spot"` |  |
| sync.nodePool.spot.tolerations[0].effect | string | `"NoSchedule"` |  |
| sync.resources.requests.memory | string | `"250Mi"` |  |
| sync.resources.requests.cpu | float | `0.5` |  |
| sync.resources.limits.memory | string | `"500Mi"` |  |
| sync.resources.limits.cpu | int | `1` |  |
| sync.tolerations | list | `[]` |  |
| sync.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"mzinga.io/tenants"` |  |
| sync.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| sync.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| zitadel_database.name | string | `"zitadel-db"` |  |
| zitadel_database.backup_enabled | bool | `false` |  |
| zitadel_database.secret | string | `"zitadel-database-jobs-secret"` |  |
| zitadel_database.configmap_scripts | string | `"zitadel-db-jobs-scripts"` |  |
| zitadel_database.psql_host | string | `"postgresql-hl.zitadel"` |  |
| zitadel_database.psql_port | string | `"5432"` |  |
| zitadel_database.psql_postgres_user | string | `"postgres"` |  |
| zitadel_database.psql_postgres_password | string | `"postgres"` |  |
| zitadel_database.debug | bool | `true` |  |
| zitadel_database.tolerations | list | `[]` |  |
| telemetry.tempo_service_name | string | `"tempo.monitoring"` |  |
| telemetry.exporter_otlp_endpoint | string | `"http://opentelemetry-collector-mzinga.monitoring:4318"` |  |
| tolerations | list | `[]` |  |
| storageClasses | object | `{"aws":{},"azure":{},"google":{}}` | Storage classes to be created for MZinga deployment. |
| storageClasses.azure | object | `{}` | Storage classes to use Azure file shares. Refer to this documentation: https://learn.microsoft.com/en-us/azure/aks/azure-csi-files-storage-provision |
| storageClasses.aws | object | `{}` | Storage classes to use AWS Elastic File system. refer to this documentation: https://aws.amazon.com/blogs/containers/introducing-efs-csi-dynamic-provisioning/ |
| storageClasses.google | object | `{}` | Storage classes to use Google Filestore. refer to this documentation: https://cloud.google.com/filestore/docs/csi-driver#storage-class |
| persistence | object | `{"volumes":{"basic":{"capacity":"10Gi","mountOptions":["dir_mode=0777","file_mode=0777","uid=1000","gid=1000","mfsymlinks","nobrl"],"reclaimPolicy":"Retain"}}}` | Persistence section describe which volumes and claims will be created |
| persistence.volumes | object | `{"basic":{"capacity":"10Gi","mountOptions":["dir_mode=0777","file_mode=0777","uid=1000","gid=1000","mfsymlinks","nobrl"],"reclaimPolicy":"Retain"}}` | Volumes specification |
