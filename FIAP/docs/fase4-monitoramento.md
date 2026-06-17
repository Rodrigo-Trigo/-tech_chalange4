# Monitoramento

Este documento descreve a configuração da stack de observabilidade:

## Prometheus
- Coleta métricas de aplicações e cluster.
- Configurado via Helm Chart com `prometheus-values.yaml`.

## Grafana
- Visualização de métricas e dashboards.
- Configurado via Helm Chart com `grafana-values.yaml`.

## Loki
- Centralização de logs.
- Configurado via Helm Chart com `loki-values.yaml`.

## Evidências
- Prints dos dashboards de métricas.
- Logs coletados e visualizados no Grafana.
