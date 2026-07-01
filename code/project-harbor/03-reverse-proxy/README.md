# Stufe 03 – Reverse Proxy + TLS

Traefik terminiert HTTPS und routet per Hostname. Für echte Let's-Encrypt-
Zertifikate muss `WEB_HOST` öffentlich auf den Host zeigen. Im Lab eignen
sich selbstsignierte Zertifikate (siehe Kapitel 23).

```bash
cp .env.example .env        # Werte ersetzen!
docker compose up -d
docker compose logs -f traefik
```
