# Stufe 05 – Zentrales Logging
Loki sammelt Container-Logs, Grafana zeigt sie an (Datenquelle Loki:
`http://loki:3100`).
```bash
docker plugin install grafana/loki-docker-driver:3.1.0 --alias loki --grant-all-permissions
cp .env.example .env
docker compose up -d
```
