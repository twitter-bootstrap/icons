
build: components icons.css
	@component build --dev

components: component.json
	@component install --dev

icons.css: icons.less variables.less mixins.less
	@lessc icons.less >icons.css

clean:
	rm -fr build components icons.css

.PHONY: clean
