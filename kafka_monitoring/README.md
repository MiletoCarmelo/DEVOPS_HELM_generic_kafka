# Kafka Monitoring

Configuration du monitoring Kafka utilisant Prometheus Operator.

## Prérequis

- Prometheus Operator installé dans le cluster
- ServiceMonitor CRD disponible
- PrometheusRule CRD disponible

## Installation

```bash
# Ajouter le repo Helm si ce n'est pas déjà fait
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# Installer Prometheus Operator si nécessaire
helm install prometheus prometheus-community/kube-prometheus-stack -n monitoring --create-namespace

# Installer la configuration de monitoring
helm install kafka-monitoring ./kafka_monitoring -n kafka-dev
```

## Configuration

### ServiceMonitor

Le ServiceMonitor est configuré pour scraper les métriques Kafka toutes les 15 secondes par défaut.

### Règles Prometheus

Inclut des alertes pour :
- Absence de controller Kafka actif
- Partitions sous-répliquées
- Autres métriques importantes

## Visualisation

Les métriques sont disponibles dans Grafana via le dashboard Kafka importé automatiquement.

## Dépannage

1. Vérifier que les CRDs sont installées :
```bash
kubectl get crd | grep monitoring.coreos.com
```

2. Vérifier le status du ServiceMonitor :
```bash
kubectl get servicemonitor -n kafka-dev
```