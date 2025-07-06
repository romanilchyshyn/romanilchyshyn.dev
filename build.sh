mkdir -p public

cp style.css public/style.css
cp sitemap.xml public/sitemap.xml

pandoc index.md -o public/index.html --to=html5 --template=template.html --metadata title="romanilchyshyn.dev"

open public/index.html
