#!/bin/bash

mergeDestination="$1"
[[ -z "$1" ]] && { echo "Parameter destination path is empty" ; exit 1; }

skeletonDir=$(cd `dirname $0` && pwd)
mergeBranch="merge_branch"

git checkout -b $mergeBranch

read -p 'Project name ' projectName
read -p 'Android bundle identifier, e.g. com.wachanga.* ' androidBundle

# react-native-rename $projectName -b $androidBundle

git add git diff 0.0.1 origin/test_branch
git commit -m "rename project"

cd "$mergeDestination" || exit
git remote add skeleton "$skeletonDir"
git fetch skeleton
git merge --squash --allow-unrelated-histories skeleton/$mergeBranch
git remote remove skeleton

cd "$skeletonDir"
git checkout master -f
git reset --hard
git branch -D $mergeBranch

exit 0
