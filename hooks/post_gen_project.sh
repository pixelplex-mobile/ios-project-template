#!/bin/bash

GREEN='\033[0;32m'
echo -e "${GREEN}Project successfuly generated!"

bundle install
bundle exec pod install

echo -e "${GREEN}Pods successfuly installed!"
