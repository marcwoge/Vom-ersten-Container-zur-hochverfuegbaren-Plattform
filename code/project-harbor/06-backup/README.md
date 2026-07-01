# Stufe 06 – Backup & Restore
```bash
export POSTGRES_USER=harbor_app POSTGRES_DB=harbor
./backup.sh
```
Siehe `restore-hinweise.md` für die Wiederherstellung. Snapshot ist kein
Backup – DB-Dumps sind konsistent, ein laufendes Volume nicht zwingend.
