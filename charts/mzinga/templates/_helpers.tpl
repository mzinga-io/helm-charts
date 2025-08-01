{{- define "mzinga.deployment.replicas" }}
    {{- $replicas := 1 -}}
    {{- if eq .tier "pro" -}}
    {{- $replicas = 3 -}}
    {{- end -}}
    {{- if eq .tier "ultra" -}}
    {{- $replicas = .replicas | default 5 -}}
    {{- end -}}
    {{ $replicas }}
{{- end }}

{{- define "mzinga.hpas.maxReplicas" }}
    {{- $replicas := 1 -}}
    {{- if eq .Values.tenant.tier "pro" -}}
    {{- $replicas = 5 -}}
    {{- end -}}
    {{- if eq .Values.tenant.tier "ultra" -}}
    {{- $replicas = 7 -}}
    {{- end -}}
    {{ $replicas }}
{{- end }}

{{- define "mzinga.backup.schedule" }}
    {{- $scheduled_hour := (.Values.database.cron_jobs.scheduled_hour | default "0" | toString) -}}
    {{- $schedule := printf "0 %s 1 * *" $scheduled_hour -}}
    {{- if eq .Values.tenant.tier "pro" -}}
    {{- $schedule = printf "0 %s * * 0" $scheduled_hour -}}
    {{- end -}}
    {{- if eq .Values.tenant.tier "ultra" -}}
    {{- $schedule = printf "0 %s * * *" $scheduled_hour -}}
    {{- end -}}
    {{ $schedule }}
{{- end }}

{{- define "mzinga.spot_affinity" }}
- key: "kubernetes.azure.com/scalesetpriority"
  operator: "In"
  values:
  - "spot"
{{- end }}

{{- define "mzinga.affinity" }}
  {{- if .affinity }}
affinity: {{- include "common.tplvalues.render" (dict "value" .affinity "context" .context) | nindent 8 }}
    {{- if eq .context.Values.nodePool.priority "Spot" }}
      {{- include "mzinga.spot_affinity" .context | nindent 14 }}
    {{- end }}
  {{- else -}}
affinity:
  nodeAffinity:
    requiredDuringSchedulingIgnoredDuringExecution:
      nodeSelectorTerms:
      - matchExpressions:
        {{- include "mzinga.spot_affinity" .context | nindent 14 }}
  {{- end }}
{{- end }}

{{- define "mzinga.tolerations" }}
  {{- if eq .context.Values.nodePool.priority "Spot" }}
  {{- $tolerations := concat .tolerations .context.Values.nodePool.spot.tolerations -}}
tolerations: {{- include "common.tplvalues.render" (dict "value" $tolerations "context" .context) | nindent 8 }}
  {{- else -}}
tolerations: {{- include "common.tplvalues.render" (dict "value" .tolerations "context" .context) | nindent 8 }}
  {{- end }}
{{- end }}


{{- define "mzinga.image" }}
image: {{ .image.registry }}/{{ .image.repository }}:{{ .image.tag }}
{{- end }}

{{- define "mzinga.dd_unified_tagging.labels" }}
tags.datadoghq.com/env: "{{ .context.Values.env }}"
tags.datadoghq.com/service: "{{ .item.name }}"
tags.datadoghq.com/version: "{{ .item.image.tag }}"
{{- end }}

{{- define "mzinga.dd_unified_tagging.env_variables" }}
- name: DD_ENV
  valueFrom:
    fieldRef:
      fieldPath: metadata.labels['tags.datadoghq.com/env']
- name: DD_SERVICE
  valueFrom:
    fieldRef:
      fieldPath: metadata.labels['tags.datadoghq.com/service']
- name: DD_VERSION
  valueFrom:
    fieldRef:
      fieldPath: metadata.labels['tags.datadoghq.com/version']
- name: DD_LOGS_INJECTION
  value: 'true'
{{- end }}