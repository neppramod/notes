#!/bin/bash
DRI_PRIME=1 glxinfo | grep "OpenGL renderer"
DRI_PRIME=1 $1
