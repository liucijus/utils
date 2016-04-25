#!/bin/bash

ORIGIN=$(git config --get remote.origin.url)

if [[ $ORIGIN == *"wix"* ]]
then
  echo "Setting user info to Wix for the project"
  git config user.email vaidasp@wix.com
  git config user.signingkey 7B5939A0
else
  echo "Setting user info to personal for the project"
  git config user.email vaidas.pilkauskas@gmail.com
  git config user.signingkey 0A948381
fi  

