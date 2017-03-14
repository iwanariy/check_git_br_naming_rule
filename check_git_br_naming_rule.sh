#!/bin/bash

branches=`git br -a`

for br in ${branches}
do
  echo "branch name: ${br}"
done
