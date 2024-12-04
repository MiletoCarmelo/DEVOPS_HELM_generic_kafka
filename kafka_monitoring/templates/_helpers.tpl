# kafka_monitoring/templates/_helpers.tpl
{{/*
Expand the name of the chart.
*/}}
{{- define "kafka-monitoring.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "kafka-monitoring.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "kafka-monitoring.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "kafka-monitoring.labels" -}}
helm.sh/chart: {{ include "kafka-monitoring.chart" . }}
{{ include "kafka-monitoring.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "kafka-monitoring.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kafka-monitoring.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}