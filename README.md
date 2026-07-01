# Project Harbor – Beispielcode

Lauffähiger Beispielcode zum Buch
**„Vom ersten Container zur hochverfügbaren Plattform“**
(Ein Praxisprojekt für Administratoren und Entwickler) von Marc-Philipp Woge.

Dieses Repository enthält das durchgehende Praxisprojekt **Project Harbor** –
Stufe für Stufe, so wie es im Buch entsteht – sowie kleinere Einzelbeispiele.

## Inhalt

Die Pfade entsprechen exakt den Angaben im Buch (dort beginnen sie mit `code/`):

- `code/kapitel-05-erster-container/` – erste Schritte mit der CLI
- `code/kapitel-07-dockerfile/` – ein eigenes statisches Web-Image
- `code/project-harbor/` – das durchgehende Praxisprojekt:
  - `01-basic-web/` – erster Webdienst
  - `02-web-db/` – Anwendung mit Datenbank
  - `03-reverse-proxy/` – Traefik, HTTPS
  - `04-monitoring/` – Prometheus & Grafana
  - `05-logging/` – zentrales Logging
  - `06-backup/` – Backup- und Restore-Skripte
  - `07-load-balancing/` – mehrere Instanzen hinter dem Proxy
  - `08-swarm/` – Ausblick auf Docker Swarm

Jeder Ordner hat eine eigene `README.md` mit den Schritten zum Ausprobieren.

## Nutzung

```bash
git clone https://github.com/marcwoge/Vom-ersten-Container-zur-hochverfuegbaren-Plattform.git
cd Vom-ersten-Container-zur-hochverfuegbaren-Plattform/code/project-harbor/02-web-db
cp .env.example .env      # Werte durch eigene, starke ersetzen
docker compose up -d
```

## Sicherheit

> Alle Passwörter in den Beispielen sind **Platzhalter**. Erzeugen Sie `.env`
> aus der jeweiligen `.env.example`-Vorlage und ersetzen Sie sie durch starke,
> individuelle Werte. Echte `.env`-Dateien gehören **nicht** ins Repository
> (siehe `.gitignore`).

## Lizenz

MIT – siehe [LICENSE](LICENSE). Der Buchtext selbst ist nicht Teil dieses
Repositories und unterliegt dem Urheberrecht des Autors.
