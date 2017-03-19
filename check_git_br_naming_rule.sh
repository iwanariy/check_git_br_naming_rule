#!/bin/bash

branches=`git branch -r`
remote="origin"

for br in ${branches}
do
  # feature
  if [[ "${br}" =~ ^${remote}\/feature\/ ]];
  then
    continue
  fi

  # release
  if [[ "${br}" =~ ^${remote}\/release\/ ]];
  then
    continue
  fi

  echo ${br}
done
