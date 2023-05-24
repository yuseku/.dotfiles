#!/bin/bash

# Kill any existing instances of xborders
pkill xborders

# Start xborders with the specified border width and radius
xborders --border-width 3 --border-radius 16 &
