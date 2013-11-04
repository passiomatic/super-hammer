CSS_FILES=./stylesheets/rock-hammer.scss:./stylesheets/all.css
CSS_FILES_IE8=./stylesheets/lte-ie8.scss:./stylesheets/lte-ie8.css

all: cssupdate cssupdateie8

cssupdate:
	sass -f -t compact --update $(CSS_FILES)

cssupdateie8:
	sass -f -t compact --update $(CSS_FILES_IE8)

csswatch:
	sass --watch $(CSS_FILES)

cssclean:
	rm -r ./.sass-cache
	
