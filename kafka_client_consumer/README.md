# Kafka Console Consumer Helm Chart

Chart Helm pour déployer un consumer console Kafka qui permet de monitorer les topics.

## Configuration

### Values par défaut
```yaml
image:
  repository: bitnami/kafka
  tag: "3.6.1"
  platform: "linux/arm64"  # Compatible Raspberry Pi 5

kafkaBootstrapServers: "kafka-service:9092"
topic: "finance-price-stream"
```

### Installation
```bash
# Installation basique
helm install kafka-consumer .

# Pour un topic spécifique
helm install kafka-consumer . --set topic=mon-topic
```

### Vérification
Pour voir les messages consommés :
```bash
kubectl logs -f deployment/kafka-consumer-console-consumer
```

## Compatibilité
- Supporte AMD64 et ARM64 (Raspberry Pi 5)
- Testé avec Kafka 3.x
- Kubernetes 1.19+