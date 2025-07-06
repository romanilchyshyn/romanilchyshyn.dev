rm -rf public
mkdir public

cp style.css public/style.css
cp sitemap.xml public/sitemap.xml
cp cv.pdf public/cv-roman-ilchyshyn.pdf

alias pandock='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) --platform linux/amd64 pandoc/latex:3.7'

pandock index.md -o public/index.html --to=html5 --template=template.html --metadata title="romanilchyshyn.dev"
pandock cv-experimental.md -o public/cv-experimental.pdf -V geometry:margin=1in -V fontsize=12pt -V mainfont="Georgia"

open public/index.html
