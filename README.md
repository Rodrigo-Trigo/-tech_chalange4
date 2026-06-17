# Tech Challenge Fase 4 - FIAP

Este repositório contém a entrega da **Fase 4** do Pós-Tech FIAP, cobrindo:
- Infraestrutura como código (Terraform)
- Observabilidade e GitOps (Prometheus, Grafana, Loki, OTel Collector)
- Instrumentação de microsserviços (OpenTelemetry)
- Pipelines de automação (CI/CD, Segurança, Self-Healing)
- Documentação e evidências

---

## 📂 Estrutura

- [terraform](./FIAP/terraform) → Infraestrutura como código
  - [vpc](./FIAP/terraform/vpc) → rede VPC
  - [eks](./FIAP/terraform/eks) → cluster Kubernetes (EKS)
  - [rds](./FIAP/terraform/rds) → banco de dados Postgres

- [gitops](./FIAP/gitops) → Manifests e Helm charts aplicados via ArgoCD
  - [applications/monitoring](./FIAP/gitops/applications/monitoring) → Prometheus, Grafana, Loki, OTel Collector

- [workflows](./FIAP/workflows) → Pipelines do GitHub Actions
  - `ci-cd-pipelines.yml` → build e deploy
  - `security-pipeline.yml` → análise de segurança
  - `self-healing.yml` → automação de recuperação

- [instrumentation](./FIAP/instrumentation) → Microsserviços instrumentados
  - [auth-service](./FIAP/instrumentation/auth-service) → exemplo em Go com OpenTelemetry

- [docs](./FIAP/docs) → Relatórios e evidências
  - `fase4-monitoramento.md`
  - `fase4-apm-tracing.md`
  - `fase4-self-healing.md`

---

## ⚙️ Pré-requisitos

- Terraform >= 1.5  
- Go >= 1.20  
- kubectl configurado para o cluster  
- helm instalado  
- Docker configurado  
- Conta no GitHub para rodar Actions  

---

## 🚀 Como usar

### 1. Infraestrutura
```bash
cd FIAP/terraform/vpc && terraform init && terraform apply
cd FIAP/terraform/eks && terraform init && terraform apply
cd FIAP/terraform/rds && terraform init && terraform apply

```

2. GitOps
Aplicar manifests via ArgoCD.

Configurações de Prometheus, Grafana, Loki e OTel Collector estão em ```gitops/applications/monitoring```.

3. Workflows
CI/CD: build e deploy automático.

Security: scan de vulnerabilidades.

Self-Healing: reinício automático de serviços em caso de falha.

4. Instrumentation
Exemplo em Go (```auth-service/main.go```) com OpenTelemetry:

```go run instrumentation/auth-service/main.go```

5. Documentação
Relatórios e prints estão em docs/.

📊 Evidências
Dashboards de métricas e logs (Prometheus/Grafana).

Logs centralizados (Loki).

Traces distribuídos (Datadog/New Relic).

Alertas e workflows de correção (PagerDuty/OpsGenie).

Execução dos pipelines no GitHub Actions.
