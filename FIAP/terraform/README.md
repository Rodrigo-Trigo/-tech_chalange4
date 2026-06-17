# Terraform

Esta pasta contém os módulos de infraestrutura como código utilizados na Fase 4.

## Estrutura
- **vpc/** → configuração da rede VPC.
- **eks/** → criação do cluster Kubernetes (EKS).
- **rds/** → banco de dados relacional (Postgres).

Cada subpasta possui um `main.tf` com os recursos correspondentes.  
O objetivo é provisionar a infraestrutura base para suportar os microsserviços e a stack de observabilidade.
