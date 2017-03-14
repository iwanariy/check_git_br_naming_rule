#!/bin/bash

branches=`git br -r`

for br in ${branches}
do
  echo "branch name: ${br}"
done
