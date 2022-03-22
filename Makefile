target:
	mkdir -p target/

target/install-mdbook: target
	cargo install mdbook
	touch target/install-mdbook

target/install-mdbook-mermaid: target target/install-mdbook
	cargo install mdbook-mermaid
	mdbook-mermaid install .
	touch target/install-mdbook-mermaid

target/install-mdbook-katex: target target/install-mdbook
	cargo install --git "https://github.com/lzanini/mdbook-katex"
	touch target/install-mdbook-katex

target/install-environment: target/install-mdbook target/install-mdbook-mermaid target/install-mdbook-katex

uninstall-mdbook:
	cargo uninstall mdbook
	rm -rf target/install-mdbook
	
uninstall-mdbook-mermaid:
	cargo uninstall mdbook
	rm -rf target/install-mdbook-mermaid

uninstall-mdbook-katex:
	cargo uninstall mdbook-katex
	rm -rf target/install-mdbook-katex

uninstall-environment: uninstall-mdbook uninstall-mdbook-mermaid uninstall-mdbook-katex

docs: target/install-environment
	mdbook build
	cp -r book docs/	

dev: target/install-environment
	mdbook serve --open -p 3000 -n 0.0.0.0

clean-all: clean uninstall-environment

clean:
	rm -rf book