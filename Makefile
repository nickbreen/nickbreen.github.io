export GEM_HOME := $(CURDIR)/.gems
export PATH := $(GEM_HOME)/bin:$(PATH)

.PHONY: serve install

serve:
	bundle exec jekyll serve

install:
	bundle install
