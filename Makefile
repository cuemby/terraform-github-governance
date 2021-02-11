.PHONY: changelog release

changelog:
	git-chglog -o CHANGELOG.md --next-tag `semtag $(version) -s $(scope) -o`

release:
	semtag $(version) -s $(scope)
