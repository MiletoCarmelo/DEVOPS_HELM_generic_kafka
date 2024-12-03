# templates/_helpers.tpl
{{/*
Expand the name of the chart.
*/}}
{{- define "kafka-client-consumer.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}