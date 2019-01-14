#!/bin/bash

#!/bin/sh

set -e

git init
bundle install
cd app
bundle exec pod install

GREEN='\033[0;32m'
echo -e "${GREEN}Project successfuly generated!"
echo -e "${GREEN}You will need to install bundler and pods for the project. Checkout the generated project Readme to get started."
