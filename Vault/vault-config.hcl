# Vault configuration file for a local development environment

# The storage backend, using file storage for simplicity
storage "file" {
  path = "C:\\vault_1.18.0\\data"
}

# Listener configuration for HTTP
listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = 1
}

# Enable telemetry (optional)
telemetry {
  prometheus_retention_time = "24h"
}

# Set the cluster address (useful for HA setups, but can be left as is for local dev)
# cluster_address = "https://127.0.0.1:8201"

# UI configuration
ui = true
