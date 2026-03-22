Cloudflare Tunnel + Docker
==========================

This repo includes a minimal Docker setup to host the static site locally and expose it through Cloudflare Tunnel.

Local run
---------
1. Copy `.env.example` to `.env`
2. Optionally change `PORT`
3. Start the site:
   - `docker compose up -d web`
4. Open `http://localhost:8084` unless you changed `PORT`

Cloudflare Tunnel
-----------------
1. Create a named or token-based tunnel in Cloudflare Zero Trust.
2. Point the hostname you want to this service: `http://web:80`
3. Put the tunnel token in `.env` as `CLOUDFLARED_TOKEN=...`
4. Start with:
   - `docker compose --profile local up -d`

Notes
-----
- The site is static. Nginx serves the repo contents directly from the image.
- The image includes custom 404 and 500 pages.
- The raw KML/KMZ complaint-map files and working notes are excluded from `package.sh` deploys and from the Docker build context.
- If you keep this repo public, old content still exists in git history even if the current site is cleaner.

Recommended next steps
----------------------
- Replace the placeholder contact address in `corrections.html`
- Replace the placeholder wording in `index.html` with exact dates and repayment totals
- Decide whether you want to keep `noindex` in the page metadata
