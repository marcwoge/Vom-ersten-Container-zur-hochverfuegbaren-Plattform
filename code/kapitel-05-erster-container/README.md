# Kapitel 5 – Der erste Container

```bash
docker run --rm hello-world
docker run -d --name web1 -p 8080:80 nginx
curl -s http://localhost:8080 | head -n 5
docker logs web1
docker exec -it web1 sh
docker rm -f web1
```
