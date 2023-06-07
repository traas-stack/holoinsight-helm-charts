{{/*
agent_probe defines agent probe fragment.
'agentProbe' is an internal variable to control whether 'probe' feature is enabled.
*/}}
{{- define "agent_probe" }}
{{- if .Values.agent.probe.enabled }}
readinessProbe:
  exec:
    command: [ "curl", "localhost:9117" ]
{{- end }}
{{- end }}