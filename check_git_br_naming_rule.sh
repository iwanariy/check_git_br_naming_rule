#!/bin/bash

branches=`git br -r`
remote="origin"

for br in ${branches}
do
  result="NG"

  # feature
  if [[ "${br}" =~ ^${remote}\/feature\/ ]];
  then
    result="OK"
  fi

  # release
  if [[ "${br}" =~ ^${remote}\/release\/ ]];
  then
    result="OK"
  fi

  # result
  echo "branch: ${br}"
  echo "result: ${result}"
done
