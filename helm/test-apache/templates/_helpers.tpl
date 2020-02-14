{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "test-apache.fullname" -}}
{{- $name := default "test-apache" -}}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
