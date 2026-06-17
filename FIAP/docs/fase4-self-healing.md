# Self-Healing

Este documento descreve a automação de resposta a incidentes.

## Alertas Inteligentes
- Configuração de alertas no Prometheus.
- Integração com PagerDuty ou OpsGenie.

## Automação
- Workflow `self-healing.yml` reinicia serviços automaticamente.
- Exemplo: restart do `auth-service` em caso de falha.

## Evidências
- Prints de alertas disparados.
- Logs de execução do workflow de correção.
