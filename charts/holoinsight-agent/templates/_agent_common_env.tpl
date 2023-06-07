{{- define "agent_common_env" }}
- name: HI_APIKEY
  valueFrom:
    secretKeyRef:
      name: holoinsight-agent-secret
      key: apikey
- name: HI_REGISTRY_ADDR
  valueFrom:
    configMapKeyRef:
      name: holoinsight-agent-cm
      key: registryAddr
- name: HI_GATEWAY_ADDR
  valueFrom:
    configMapKeyRef:
      name: holoinsight-agent-cm
      key: gatewayAddr
- name: HI_REGISTRY_SECURE
  valueFrom:
    configMapKeyRef:
      name: holoinsight-agent-cm
      key: grpcSecure
- name: HI_GATEWAY_SECURE
  valueFrom:
    configMapKeyRef:
      name: holoinsight-agent-cm
      key: grpcSecure
- name: POD_NAMESPACE
  valueFrom:
    fieldRef:
      fieldPath: metadata.namespace
- name: POD_NAME
  valueFrom:
    fieldRef:
      fieldPath: metadata.name
- name: POD_IP
  valueFrom:
    fieldRef:
      fieldPath: status.podIP
- name: HOST_IP
  valueFrom:
    fieldRef:
      fieldPath: status.hostIP
- name: NODE_IP
  valueFrom:
    fieldRef:
      fieldPath: status.hostIP
- name: NODE_NAME
  valueFrom:
    fieldRef:
      fieldPath: spec.nodeName
- name: HI_WORKSPACE
  valueFrom:
    configMapKeyRef:
      name: holoinsight-agent-cm
      key: workspace
- name: HI_CLUSTER
  valueFrom:
    configMapKeyRef:
      name: holoinsight-agent-cm
      key: cluster
- name: USESUPERVISOR
  value: {{ default "false" .Values.agent.misc.useSupervisord | quote }}
- name: K8S_RESOURCES_LIMIT_CPU
  valueFrom:
    resourceFieldRef:
      resource: limits.cpu
- name: K8S_RESOURCES_LIMIT_MEMORY
  valueFrom:
    resourceFieldRef:
      resource: limits.memory
- name: IMAGE
  value: {{ .Values.agent.image }}
{{- if .Values.agent.envs }}
{{ toYaml .Values.agent.envs }}
{{- end }}

{{- end }}