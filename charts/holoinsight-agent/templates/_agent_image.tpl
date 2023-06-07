{{- define "agent_image" }}
image: {{ .Values.agent.image }}
{{- if contains "-SNAPSHOT" .Values.agent.image }}
imagePullPolicy: Always
{{- else }}
imagePullPolicy: {{ default .Values.image.pullPolicy }}
{{- end }}
{{- end }}
