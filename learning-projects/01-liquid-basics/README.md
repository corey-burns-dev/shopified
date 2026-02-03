# Liquid Basics (Week 1)

Goal: Get comfortable with Liquid syntax, objects, and filters by editing a real theme.

## Setup
1. Start the container and open a shell:
   - `docker-compose up -d`
   - `docker-compose exec shopify-dev bash`
2. Log in to Shopify:
   - `shopify auth login`
3. Create a theme (if you don’t already have one):
   - `scripts/theme-init.sh my-first-theme`

## Exercises
Open your theme at `/workspace/theme-dev/my-first-theme` and do the following:

1. **Output Basics**
   - Find `sections/main-product.liquid` or `sections/main-collection.liquid`.
   - Add a line that outputs the current template name:
     - `{{ template.name }}`

2. **Conditional Rendering**
   - In `sections/main-product.liquid`, show a badge if a product is on sale:
     - If `compare_at_price` is greater than `price`, show “On Sale”.

3. **Loops**
   - In `sections/main-collection.liquid`, list the titles of the first 5 products in the collection.

4. **Filters**
   - Format money using the `money` filter.
   - Format dates using the `date` filter on `article.published_at` (if you edit a blog section).

## Tips
- Use the Shopify Theme Editor to preview changes in real time.
- Keep edits small, then refresh.
- Use `shopify theme dev --store your-store.myshopify.com` for live preview.
