#!/bin/bash

LINK_ESC=${1//\//\\\/}
cp index.html index.html.tmp
sed "s/id=\"release_link\".*/id=\"release_link\" href=\"$LINK_ESC\"/" < index.html.tmp > index.html
rm index.html.tmp

