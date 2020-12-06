SHELL=/bin/bash
CONDA_ENV=usegalaxy-eu-website
CONDA=$(shell which conda)
ifeq ($(CONDA),)
	CONDA=${HOME}/miniconda3/bin/conda
endif
ACTIVATE_ENV = source $(shell dirname $(dir $(CONDA)))/bin/activate $(CONDA_ENV)

default: help

activate:
	echo "$(ACTIVATE_ENV)"

run: ## Launch jekyll locally
	$(ACTIVATE_ENV) && jekyll serve --future
.PHONY: run

update-citations: ## Update the usegalaxy-eu citations from Zotero
	$(ACTIVATE_ENV) && python update_citations-eu.py
.PHONY: run

update-tools: ## Update the usegalaxy-eu citations from Zotero
	$(ACTIVATE_ENV) && python update_tools.py
.PHONY: run

runi: ## Launch jekyll locally, incremental rebuild
	$(ACTIVATE_ENV) && jekyll serve --incremental --future
.PHONY: runi

create-env: ## create usegalaxy-eu-website conda environment
	if ${CONDA} env list | grep '^${CONDA_ENV}'; then \
	    ${CONDA} env update -f environment.yml; \
	else \
	    ${CONDA} env create --force -f environment.yml; \
	fi
.PHONY: create-env

install: create-env ## create usegalaxy-eu-website conda environment
.PHONY: install

build: ## Build the site once and exit
	$(ACTIVATE_ENV) && jekyll build
.PHONY: build

freeze-env:
	@conda env export --no-builds -n $(CONDA_ENV) | grep -v "^prefix: "
.PHONY: freeze-env

clean: ## Remove any generated URLs
	$(ACTIVATE_ENV) && jekyll clean
.PHONY: clean

check-http-urls: ## check http urls
	$(ACTIVATE_ENV) && htmlproofer ./_site/ --check-html --allow-hash-href --assume-extension --disable-external --url-swap "http\://localhost:https\://usegalaxy-eu.github.io" --enforce-https 2>&1 | grep 'is not' | sed 's/link .*//g' | sort | uniq -c | sort -nk1
.PHONY: check-http-urls

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help
