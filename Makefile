run: ## Launch jekyll locally
	bundler exec jekyll serve

help:
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build: ## Build the site once and exit
	bundler exec jekyll build

clean: ## Remove any generated URLs
	bundler exec jekyll clean

check_http_urls:
	bundler exec htmlproofer ./_site/ --check-html --allow-hash-href --assume-extension --disable-external --url-swap "http\://localhost:https\://usegalaxy-eu.github.io" --enforce-https 2>&1 | grep 'is not' | sed 's/link .*//g' | sort | uniq -c | sort -nk1
