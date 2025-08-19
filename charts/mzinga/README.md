# mzinga

![Version: 1.23.0](https://img.shields.io/badge/Version-1.23.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.7.1](https://img.shields.io/badge/AppVersion-1.7.1-informational?style=flat-square)

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
| https://charts.bitnami.com/bitnami | common | 2.31.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| api.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"mzinga.io/tenants"` |  |
| api.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| api.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| api.api_key | string | `""` |  |
| api.customization.PAYLOAD_PUBLIC_DISABLED_ENTITIES_SLUGS | string | `"organizations,projects,environments,assets"` |  |
| api.image.registry | string | `"newesissrl.azurecr.io"` |  |
| api.image.repository | string | `"mzinga/payload/api"` |  |
| api.image.tag | string | `"1.6.6"` |  |
| api.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| api.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| api.ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| api.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| api.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"100m"` |  |
| api.name | string | `"mzinga-api"` |  |
| api.otel_console_exporter | string | `"1"` |  |
| api.otel_log_level | string | `""` |  |
| api.publicURL | string | `""` |  |
| api.replicas | int | `1` |  |
| api.resources.limits.cpu | int | `1` |  |
| api.resources.limits.memory | string | `"500Mi"` |  |
| api.resources.requests.cpu | float | `0.5` |  |
| api.resources.requests.memory | string | `"250Mi"` |  |
| api.tolerations | list | `[]` |  |
| backoffice.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"mzinga.io/tenants"` |  |
| backoffice.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| backoffice.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_CUSTOM_ICON_SRC | string | `"https://via.placeholder.com/32x32/008000"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_CUSTOM_LOGO_SRC | string | `"https://via.placeholder.com/180x180/FFFF00"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_DISABLED_ENTITIES_SLUGS | string | `"organizations,projects,environments,assets"` |  |
| backoffice.customization.PAYLOAD_PUBLIC_DISABLE_LOCAL_STRATEGY | string | `"0"` |  |
| backoffice.image.registry | string | `"newesissrl.azurecr.io"` |  |
| backoffice.image.repository | string | `"mzinga/payload/backoffice"` |  |
| backoffice.image.tag | string | `"1.6.6"` |  |
| backoffice.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| backoffice.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| backoffice.ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| backoffice.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| backoffice.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"100m"` |  |
| backoffice.name | string | `"mzinga-bo"` |  |
| backoffice.otel_console_exporter | string | `"1"` |  |
| backoffice.otel_log_level | string | `""` |  |
| backoffice.publicURL | string | `""` |  |
| backoffice.replicas | int | `1` |  |
| backoffice.resources.limits.cpu | int | `1` |  |
| backoffice.resources.limits.memory | string | `"500Mi"` |  |
| backoffice.resources.requests.cpu | float | `0.5` |  |
| backoffice.resources.requests.memory | string | `"250Mi"` |  |
| backoffice.tolerations | list | `[]` |  |
| basedns | string | `"mzinga.io"` |  |
| common.enabled | bool | `true` |  |
| common.name | string | `"mzinga-common"` |  |
| containerPort | int | `3000` |  |
| copy_files_hook.azuredevops_pat | string | `""` |  |
| copy_files_hook.debug | bool | `false` |  |
| copy_files_hook.enabled | bool | `true` |  |
| copy_files_hook.name | string | `"mzinga-copy-files"` |  |
| copy_files_hook.tolerations | list | `[]` |  |
| cron_jobs.extensibility | string | `"ce-enabler"` |  |
| cron_jobs.scheduler | string | `"time-based-executions"` |  |
| cron_jobs.tolerations | list | `[]` |  |
| database.additionalOptions.api | string | `"readPreference=secondary"` |  |
| database.additionalOptions.backoffice | string | `"readPreference=primary"` |  |
| database.additionalOptions.ws | string | `"readPreference=secondary"` |  |
| database.backup_enabled | bool | `true` |  |
| database.cron_jobs.azure_storage.account | string | `""` |  |
| database.cron_jobs.azure_storage.container | string | `""` |  |
| database.cron_jobs.azure_storage.credentials_key | string | `""` |  |
| database.cron_jobs.azure_storage.prefix | string | `""` |  |
| database.cron_jobs.backup | string | `"mzinga-db-backup-job"` |  |
| database.cron_jobs.configmap_scripts | string | `"mzinga-db-jobs-scripts"` |  |
| database.cron_jobs.password | string | `"backup123456"` |  |
| database.cron_jobs.restore | string | `"mzinga-db-restore-job"` |  |
| database.cron_jobs.scheduled_hour | int | `2` |  |
| database.cron_jobs.secret | string | `"mzinga-db-jobs-secret"` |  |
| database.cron_jobs.tolerations | list | `[]` |  |
| database.cron_jobs.username | string | `"backup"` |  |
| database.secretRef | string | `"percona-psmdb-db-users-creds"` |  |
| database.serviceURI | string | `"percona-psmdb-db-rs0.perconadb.svc.cluster.local"` |  |
| env | string | `"production"` |  |
| first_user_hook.debug | bool | `false` |  |
| first_user_hook.name | string | `"mzinga-first-user"` |  |
| first_user_hook.tolerations | list | `[]` |  |
| graphql_disable_displayground_in_production | string | `"1"` |  |
| nodePool.priority | string | `"Regular"` |  |
| nodePool.spot.tolerations[0].effect | string | `"NoSchedule"` |  |
| nodePool.spot.tolerations[0].key | string | `"kubernetes.azure.com/scalesetpriority"` |  |
| nodePool.spot.tolerations[0].operator | string | `"Equal"` |  |
| nodePool.spot.tolerations[0].value | string | `"spot"` |  |
| publicServerURL | string | `"https://admin-demo.mzinga.io"` |  |
| pvc_sync_hook.debug | bool | `false` |  |
| pvc_sync_hook.enabled | bool | `true` |  |
| pvc_sync_hook.name | string | `"mzinga-pvc-sync"` |  |
| pvc_sync_hook.tolerations | list | `[]` |  |
| sampleFrontend.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"mzinga.io/tenants"` |  |
| sampleFrontend.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| sampleFrontend.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| sampleFrontend.enabled | bool | `true` |  |
| sampleFrontend.image.registry | string | `"newesissrl.azurecr.io"` |  |
| sampleFrontend.image.repository | string | `"newesis/website/frontend"` |  |
| sampleFrontend.image.tag | string | `"0.15.1"` |  |
| sampleFrontend.name | string | `"mzinga-sample-fe"` |  |
| sampleFrontend.replicas | int | `1` |  |
| sampleFrontend.tolerations | list | `[]` |  |
| scheduler.debug | bool | `true` |  |
| scheduler.name | string | `"mzinga-scheduler"` |  |
| secret | string | `"cd9a7f30-e078-45fc-b6d2-9e4ebf6420ae"` |  |
| sendgridApiKey | string | `""` |  |
| sync.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"mzinga.io/tenants"` |  |
| sync.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| sync.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| sync.enabled | bool | `false` |  |
| sync.env | string | `"prod"` |  |
| sync.image.registry | string | `"newesissrl.azurecr.io"` |  |
| sync.image.repository | string | `"mzinga-to-zitadel"` |  |
| sync.image.tag | string | `"3.0.81"` |  |
| sync.mzinga.apiKey | string | `""` |  |
| sync.name | string | `"mzinga-to-zitadel"` |  |
| sync.nodePool.priority | string | `"Regular"` |  |
| sync.nodePool.spot.tolerations[0].effect | string | `"NoSchedule"` |  |
| sync.nodePool.spot.tolerations[0].key | string | `"kubernetes.azure.com/scalesetpriority"` |  |
| sync.nodePool.spot.tolerations[0].operator | string | `"Equal"` |  |
| sync.nodePool.spot.tolerations[0].value | string | `"spot"` |  |
| sync.otel.consoleExporter | string | `"1"` |  |
| sync.otel.disableTracing | string | `"0"` |  |
| sync.otel.logLevel | string | `"debug"` |  |
| sync.replicas | int | `1` |  |
| sync.repository.baseUrl | string | `"https://dev.azure.com/newesis/Code%20Name%20MZinga"` |  |
| sync.repository.commitsUrl | string | `"/_apis/git/repositories/infrastructure/commits?searchCriteria.%24top=1&searchCriteria.itemVersion.version=main&api-version=7.1-preview.1"` |  |
| sync.repository.instancesUrl | string | `"/_apis/git/repositories/infrastructure/items?download=false&api-version=7.1-preview.1&scopePath=/__instances__/mzinga-prod.tfvars.json"` |  |
| sync.repository.pat | string | `""` |  |
| sync.repository.pushesUrl | string | `"/_apis/git/repositories/infrastructure/pushes?api-version=7.1-preview.2"` |  |
| sync.repository.queueUrl | string | `"/_apis/pipelines/59/runs?api-version=7.1-preview.1"` |  |
| sync.resources.limits.cpu | int | `1` |  |
| sync.resources.limits.memory | string | `"500Mi"` |  |
| sync.resources.requests.cpu | float | `0.5` |  |
| sync.resources.requests.memory | string | `"250Mi"` |  |
| sync.tolerations | list | `[]` |  |
| sync.zitadel.bearerToken | string | `""` |  |
| telemetry.exporter_otlp_endpoint | string | `"http://opentelemetry-collector-mzinga.monitoring:4318"` |  |
| telemetry.tempo_service_name | string | `"tempo.monitoring"` |  |
| tenant.email | string | `"info@mzinga.io"` |  |
| tenant.env | string | `"prod"` |  |
| tenant.firstName | string | `"sample"` |  |
| tenant.lastName | string | `"tenant"` |  |
| tenant.name | string | `"demo"` |  |
| tenant.password | string | `"84b60b91-628b-42e1-adf2-00c12482f27e"` |  |
| tenant.site.bottomCardList.tag | string | `"people"` |  |
| tenant.site.bottomCardList.title | string | `"Our People"` |  |
| tenant.site.description | string | `"Demo frontend"` |  |
| tenant.site.formPage.slug | string | `"contact-us"` |  |
| tenant.site.formPage.title | string | `"Contact Us"` |  |
| tenant.site.formPage.uri | string | `"/contact-us"` |  |
| tenant.site.title | string | `"Demo frontend"` |  |
| tenant.site.titleSuffix | string | `"Demo frontend"` |  |
| tenant.site.topCardList.tag | string | `"services"` |  |
| tenant.site.topCardList.title | string | `"Our Services"` |  |
| tenant.site.topPage.slug | string | `"about-us"` |  |
| tenant.site.topPage.title | string | `"About Us"` |  |
| tenant.site.topPage.uri | string | `"/about-us"` |  |
| tenant.tier | string | `"pro"` |  |
| tolerations | list | `[]` |  |
| ws.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"mzinga.io/tenants"` |  |
| ws.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| ws.affinity.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"true"` |  |
| ws.customization | object | `{}` |  |
| ws.enabled | bool | `true` |  |
| ws.image.registry | string | `"newesissrl.azurecr.io"` |  |
| ws.image.repository | string | `"mzinga/payload/ws-service"` |  |
| ws.image.tag | string | `"1.0.40"` |  |
| ws.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt-production"` |  |
| ws.ingress.annotations."kubernetes.io/ingress.allow-http" | string | `"false"` |  |
| ws.ingress.annotations."kubernetes.io/ingress.class" | string | `"nginx"` |  |
| ws.ingress.annotations."kubernetes.io/tls-acme" | string | `"true"` |  |
| ws.ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"100m"` |  |
| ws.ingress.annotations."nginx.ingress.kubernetes.io/proxy-read-timeout" | string | `"7200"` |  |
| ws.ingress.annotations."nginx.ingress.kubernetes.io/proxy-send-timeout" | string | `"7200"` |  |
| ws.name | string | `"mzinga-ws"` |  |
| ws.otel_console_exporter | string | `"1"` |  |
| ws.otel_log_level | string | `""` |  |
| ws.publicURL | string | `""` |  |
| ws.replicas | int | `1` |  |
| ws.resources.limits.cpu | int | `1` |  |
| ws.resources.limits.memory | string | `"500Mi"` |  |
| ws.resources.requests.cpu | float | `0.5` |  |
| ws.resources.requests.memory | string | `"250Mi"` |  |
| ws.tolerations | list | `[]` |  |
| zitadel_database.backup_enabled | bool | `false` |  |
| zitadel_database.configmap_scripts | string | `"zitadel-db-jobs-scripts"` |  |
| zitadel_database.debug | bool | `true` |  |
| zitadel_database.name | string | `"zitadel-db"` |  |
| zitadel_database.psql_host | string | `"postgresql-hl.zitadel"` |  |
| zitadel_database.psql_port | string | `"5432"` |  |
| zitadel_database.psql_postgres_password | string | `"postgres"` |  |
| zitadel_database.psql_postgres_user | string | `"postgres"` |  |
| zitadel_database.secret | string | `"zitadel-database-jobs-secret"` |  |
| zitadel_database.tolerations | list | `[]` |  |
