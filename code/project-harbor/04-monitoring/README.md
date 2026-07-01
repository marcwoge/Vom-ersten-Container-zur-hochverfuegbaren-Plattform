# Stufe 04 – Monitoring
Prometheus + cAdvisor + node-exporter + Grafana.
```bash
cp .env.example .env
docker compose up -d
# Grafana: http://localhost:3000  (admin / GRAFANA_PASSWORD)
# Datenquelle Prometheus: http://prometheus:9090
```
