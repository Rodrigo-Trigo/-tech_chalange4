# GitOps

Esta pasta contém os manifests e Helm charts aplicados via ArgoCD.

## Estrutura
- **applications/** → aplicações e serviços que serão gerenciados pelo GitOps.
- **monitoring/** → stack de observabilidade (Prometheus, Grafana, Loki, OpenTelemetry Collector).

Todos os arquivos YAML aqui são versionados e aplicados automaticamente no cluster Kubernetes.
