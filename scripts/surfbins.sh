#!/bin/bash

# Check if the user has specified a project to view
if [ "$1" = "g" ]; then
  lynx "https://gtfobins.github.io/"
elif [ "$1" = "l" ]; then
  lynx "https://lolbas-project.github.io/#"
else
  echo "Usage: ./surfbins.sh [gtfobins|lolbas]"
fi

# To use it
# chmod +x surfbins.sh
# surfbins g|l
