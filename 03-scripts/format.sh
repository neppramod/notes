#!/bin/bash
sed -i -e 's/“/"/g' $1
sed -i -e 's/”/"/g' $1
sed -i -e "s/‘/'/g" $1
sed -i -e "s/’/'/g" $1
astyle --style=kr --suffix=none $1
