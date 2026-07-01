# Restore – Hinweise

> **Restore immer zuerst auf einem Testsystem üben!**

## Volume wiederherstellen
```bash
docker run --rm -v pgdata:/data -v "$PWD/backups":/backup alpine \
  sh -c "cd /data && tar xzf /backup/pgdata-2026-06-18_1200.tar.gz"
```

## Datenbank-Dump einspielen
```bash
cat backups/db-2026-06-18_1200.dump | \
  docker exec -i db pg_restore -U "$POSTGRES_USER" -d "$POSTGRES_DB" --clean
```

## Offsite-Kopie (Beispiel)
```bash
rclone copy backups/ remote:harbor-backups
```
