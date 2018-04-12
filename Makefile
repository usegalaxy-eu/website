run:
	bundler exec jekyll serve --incremental

build:
	bundler exec jekyll build

clean:
	bundler exec jekyll clean

check_http_urls:
	bundler exec htmlproofer ./_site/ --check-html --allow-hash-href --assume-extension --disable-external --url-swap "http\://localhost:https\://usegalaxy-eu.github.io" --enforce-https 2>&1 | grep 'is not' | sed 's/link .*//g' | sort | uniq -c | sort -nk1
