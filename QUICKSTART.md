# Quickstart (Theme + Liquid)

1. `cp .env.example .env`
2. Set your store in `.env`:
   - `SHOPIFY_FLAG_STORE=your-dev-store.myshopify.com`
3. `docker-compose build`
4. `docker-compose up -d`
5. `docker-compose exec shopify-dev bash`
6. `shopify auth login`
7. Start the starter theme:
   - `shopify theme dev --store your-store.myshopify.com --path /workspace/theme-dev/starter-theme`

If the Theme Dev server runs, open the preview URL it prints in the terminal.
