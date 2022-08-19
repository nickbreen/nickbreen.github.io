export GEM_HOME := $(CURDIR)/.gems
export PATH := $(GEM_HOME)/bin:$(PATH)

.PHONY: serve clean

serve: _site/index.html
	bundle exec jekyll serve --skip-initial-build

_site/%: .gems/bin/github-pages
	bundle exec github-pages build

.gems/%: Gemfile
	bundle install

clean:
	git clean -Xdf

