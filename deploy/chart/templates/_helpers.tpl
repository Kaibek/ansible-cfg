{{- define "my-app.name" -}}
my-app
{{- end -}}

{{- define "my-app.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{- define "my-app.labels" -}}
chart: {{ .Chart.Name }}-{{ .Chart.Version }}
release: {{ .Release.Name }}
app: {{ include "my-app.name" . }}
{{- end -}}

{{- define "my-app.selectorLabels" -}}
app: {{ include "my-app.name" . }}
release: {{ .Release.Name }}
{{- end -}}

