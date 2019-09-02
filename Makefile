SHELL=/bin/bash
CONDA_ENV=usegalaxy-eu-website
CONDA=$(shell which conda)
ACTIVATE_ENV = source $(shell dirname $(dir $(CONDA)))/bin/activate $(CONDA_ENV)

run: ## Launch jekyll locally
	$(ACTIVATE_ENV) && jekyll serve

runi: ## Launch jekyll locally, incremental rebuild
	$(ACTIVATE_ENV) && jekyll serve --incremental

help:
	@egrep '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install:
	conda env create --force -f environment.yml

build: ## Build the site once and exit
	$(ACTIVATE_ENV) && jekyll build

freeze_env:
	@conda env export --no-builds -n $(CONDA_ENV) | grep -v "^prefix: "


clean: ## Remove any generated URLs
	$(ACTIVATE_ENV) && jekyll clean

check_http_urls:
	$(ACTIVATE_ENV) && htmlproofer ./_site/ --check-html --allow-hash-href --assume-extension --disable-external --url-swap "http\://localhost:https\://usegalaxy-eu.github.io" --enforce-https 2>&1 | grep 'is not' | sed 's/link .*//g' | sort | uniq -c | sort -nk1
