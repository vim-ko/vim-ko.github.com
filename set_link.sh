#!/bin/bash

LINK=http://vim-ko.github.io/releases/$1
LINK_ESC=${LINK//\//\\\/}
cp index.html index.html.tmp
sed "s/id=\"release_link\".*/id=\"release_link\" href=\"$LINK_ESC\"/" < index.html.tmp > index.html
rm index.html.tmp

