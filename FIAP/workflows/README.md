# Workflows

Esta pasta contém os pipelines do **GitHub Actions** utilizados na Fase 4.

## Estrutura
- **ci-cd-pipelines.yml** → pipeline de build, testes e deploy dos microsserviços.
- **security-pipeline.yml** → pipeline de análise de segurança (ex.: Trivy, Snyk).
- **self-healing.yml** → automação de resposta a incidentes (reinício de serviços).

## Objetivo
Os workflows garantem:
- Integração Contínua (CI) → testes e build automatizados.
- Entrega Contínua (CD) → deploy automatizado no cluster Kubernetes.
- DevSecOps → segurança integrada ao ciclo de desenvolvimento.
- Resiliência → automação de recuperação em caso de falhas.
