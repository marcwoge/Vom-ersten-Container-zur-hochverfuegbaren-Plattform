# Stufe 07 – Load Balancing
```bash
docker compose up -d --scale web=3
# Traefik verteilt Anfragen automatisch auf die 3 Instanzen.
curl -s http://localhost/
```
Nur für zustandslose Dienste! Zustand gehört in DB/Cache/Shared Storage.
