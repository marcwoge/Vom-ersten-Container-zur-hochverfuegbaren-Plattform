# Kapitel 7 – Eigenes Dockerfile

```bash
docker build -t harbor-web:0.1 .
docker run -d -p 8080:80 --name harbor-web harbor-web:0.1
curl -s http://localhost:8080
```
