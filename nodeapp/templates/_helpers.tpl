{{- define "nodeapp.selectorLabels" -}}
  app: {{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end -}}