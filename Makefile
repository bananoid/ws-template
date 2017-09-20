.PHONY: preview
preview: site/node_modules
	@wintersmith preview -C site

.PHONY: build
build: site/node_modules
	@wintersmith build -C site -o ./../build

.PHONY: clean
clean:
	rm -rf build
	rm -rf site/node_modules

site/node_modules:
	cd site && npm install