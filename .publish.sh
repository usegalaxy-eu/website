#!/bin/bash
set -ex

TMPREPO=$(mktemp -d);
git clone --quiet git@github.com:usegalaxy-eu/usegalaxy-eu.github.io.git "$TMPREPO";
mv "$TMPREPO/.git" _site/;
cp _data/Gemfile Gemfile.lock _site;
cp readme-deployed.md _site/README.md;
rm -rf "$TMPREPO"
cd _site
touch .nojekyll
git add --all -- .nojekyll *
git config --local user.name "UseGalaxy.EU Build Bot"
git config --local user.email "jenkins@usegalaxy.eu"

git commit -m "Update site ($BUILD_NUMBER)

$BUILD_URL"

git push origin master
