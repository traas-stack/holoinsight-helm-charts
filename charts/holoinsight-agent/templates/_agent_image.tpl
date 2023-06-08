{{- define "agent_image" }}
image: {{ .Values.agent.image }}
{{- if or (contains "-SNAPSHOT" .Values.agent.image) (contains ":latest" .Values.agent.image) }}
imagePullPolicy: Always
{{- else }}
imagePullPolicy: {{ default .Values.image.pullPolicy }}
{{- end }}
{{- end }}
