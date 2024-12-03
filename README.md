# Kafka Helm Charts

Ce repository contient deux charts Helm pour déployer Kafka et un consumer sur Kubernetes.

## Structure
- `kafka_backend/` : Chart principal de Kafka
- `kafka_client_consumer/` : Chart pour déployer un consumer console Kafka

## Prérequis
- Kubernetes 1.19+
- Helm 3.0+
- PV provisioner support dans le cluster

## Installation

1. Installer d'abord le backend Kafka :
```bash
helm install kafka ./kafka_backend
```

2. Installer ensuite le consumer :
```bash
helm install kafka-consumer ./kafka_client_consumer
```

## Architectures supportées
- AMD64 (x86_64)
- ARM64 (Raspberry Pi 4/5)