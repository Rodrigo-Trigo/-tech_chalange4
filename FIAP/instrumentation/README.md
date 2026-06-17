# Auth Service Instrumentation

Este diretório contém o microsserviço de autenticação instrumentado com **OpenTelemetry**.

## Objetivo
- Capturar métricas de requisições (tempo de resposta, status).
- Gerar logs estruturados para análise.
- Produzir traces distribuídos para entender o fluxo entre serviços.

## Estrutura
- **main.go** → código do serviço com instrumentação.
- Futuramente, podem ser adicionados outros arquivos de configuração.

## Fluxo
1. O serviço recebe requisições HTTP (ex.: `/login`).
2. Cada requisição gera um **span** via OpenTelemetry.
3. Os dados são enviados para o **OpenTelemetry Collector**.
4. O Collector exporta para Prometheus (métricas), Loki (logs) e APM (Datadog/New Relic).

## Evidências
- Prints de métricas no Prometheus.
- Logs visualizados no Grafana via Loki.
- Traces distribuídos no Datadog/New Relic.
