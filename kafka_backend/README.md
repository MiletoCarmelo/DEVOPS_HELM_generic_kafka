# Kafka Backend Helm Chart

Chart Helm pour déployer un cluster Kafka sur Kubernetes.

## Configuration

### Values par défaut importantes
```yaml
replicaCount: 3
persistence:
  enabled: true
  size: 10Gi
```

### Installation
```bash
# Avec les valeurs par défaut
helm install kafka .

# Avec un fichier de valeurs personnalisé
helm install kafka . -f values-custom.yaml
```

### Configuration personnalisée
Pour modifier la configuration par défaut, vous pouvez :
1. Créer un fichier `values-custom.yaml`
2. Surcharger n'importe quelle valeur du `values.yaml`
3. Installer avec : `helm install -f values-custom.yaml`

## Monitoring
Le chart expose les métriques Kafka pour Prometheus via le port 9090.

## Persistence
Les données sont persistées via PVC. Assurez-vous d'avoir un StorageClass approprié dans votre cluster.