rm -rf public
mkdir public

cp style.css public/style.css
cp sitemap.xml public/sitemap.xml

alias pandock='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) --platform linux/amd64 pandoc/latex:3.7'

pandock index.md -o public/index.html --to=html5 --template=template.html --metadata title="romanilchyshyn.dev"

open public/index.html
