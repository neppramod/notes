#!/bin/bash
java -cp /usr/share/java/saxon/saxon9he.jar net.sf.saxon.Query -q:$1 -s:$2 
