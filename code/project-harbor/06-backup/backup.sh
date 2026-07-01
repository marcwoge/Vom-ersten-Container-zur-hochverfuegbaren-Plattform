#!/usr/bin/env bash
# Project Harbor – Backup-Skript
# Sichert das pgdata-Volume und erstellt einen DB-Dump.
set -euo pipefail

DB_CONTAINER="${DB_CONTAINER:-db}"
VOLUME="${VOLUME:-pgdata}"
STAMP="$(date +%F_%H%M)"
mkdir -p backups

echo "[1/2] Volume $VOLUME sichern ..."
docker run --rm -v "${VOLUME}:/data:ro" -v "$PWD/backups:/backup" alpine \
  tar czf "/backup/${VOLUME}-${STAMP}.tar.gz" -C /data .

echo "[2/2] Datenbank-Dump erstellen ..."
# POSTGRES_USER/POSTGRES_DB werden IM Container expandiert (einfache
# Anfuehrungszeichen) -- damit laeuft das Skript auch im Cron-Lauf ohne
# zuvor geladene .env. Bei Compose alternativ: docker compose exec -T db ...
docker exec "$DB_CONTAINER" sh -c \
  'pg_dump -U "$POSTGRES_USER" -Fc "$POSTGRES_DB"' > "backups/db-${STAMP}.dump"

echo "Backup abgeschlossen: backups/*-${STAMP}.*"
echo "Hinweis: Backups anschließend offsite kopieren (3-2-1-Regel)."
