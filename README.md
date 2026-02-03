# Shopify Theme + Liquid Learning Environment

This repo is set up to help you learn Shopify **themes** and **Liquid** first. That’s the fastest path to mastering Shopify’s core templating model.

## What You’ll Learn First
- Liquid syntax (`{{ }}` output, `{% %}` logic)
- Theme structure (sections, templates, snippets)
- Shopify Theme Editor workflow
- Practical theme customization

## Quick Start
1. Copy env template and set your store:
   - `cp .env.example .env`
   - Update `SHOPIFY_FLAG_STORE` in `.env`
2. Build and start containers:
   - `docker-compose build`
   - `docker-compose up -d`
3. Enter the dev container:
   - `docker-compose exec shopify-dev bash`
4. Authenticate:
   - `shopify auth login`
5. Start the starter theme:
   - `shopify theme dev --store your-store.myshopify.com --path /workspace/theme-dev/starter-theme`

## Project Structure
```
shopify-learning/
├── docker-compose.yml
├── Dockerfile
├── .env.example
├── README.md
├── QUICKSTART.md
├── theme-dev/
│   └── starter-theme/
├── learning-projects/
│   └── 01-liquid-basics/
└── scripts/
    ├── theme-init.sh
    └── theme-dev.sh
```

## Theme Workflow (Inside Container)
- Start dev server: `shopify theme dev --store your-store.myshopify.com`
- Pull theme: `shopify theme pull`
- Push theme: `shopify theme push`
- Run checks: `shopify theme check`

## Why Not Apps Yet?
Apps are great, but Liquid is only used in themes. Learning themes first makes Liquid click quickly. Once you’re comfortable with sections and templates, we can add the Remix app workflow next.

## Next Phase (When Ready)
- Add a Shopify app scaffold (Remix)
- Add Postgres + Redis usage
- Add app learning exercises

If you want that next, say: “Add Remix app workflow.”
