# Stufe 08 – Docker Swarm
```bash
docker swarm init
docker stack deploy -c stack.yaml harbor
docker service ls
docker service scale harbor_web=5
# Rolling Update:
docker service update --image nginx:1.27-alpine harbor_web
docker stack rm harbor
```
