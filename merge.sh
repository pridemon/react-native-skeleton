#!/bin/bash

mergeDestination="$1"
[[ -z "$1" ]] && { echo "Parameter destination path is empty" ; exit 1; }

skeletonDir=$(cd `dirname $0` && pwd)
mergeBranch="merge_branch"

git checkout -b $mergeBranch

read -p 'Project name ' projectName
read -p 'Android bundle identifier, e.g. com.wachanga.* ' androidBundle

react-native-rename $projectName -b $androidBundle

git add .
git commit -m "rename project"

cd "$mergeDestination" || exit
git remote add skeleton "$skeletonDir"
git fetch skeleton
git merge --squash --allow-unrelated-histories skeleton/$mergeBranch
git remote remove skeleton

cd "$skeletonDir" && git branch -D $mergeBranch
git checkout master -f
git reset --hard

exit 0
