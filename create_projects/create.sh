#!/bin/bash

#setup variables
project_dir=home/Documents/Projects
project_name=$1
username=$GITHUB_USERNAME
request_data='{"name" : "'$project_name'"}'
request_auth='-u '$username':'$GITHUB_TOKEN_AUTOMATED_PROJ

#navigate to and create the project directory
cd $project_dir
mkdir $project_name
cd $project_name

#initialize git and create it in github
git init
curl "$request_auth" -X POST --data "$request_data" https://api.github.com/user/repos

#specify the remotes, create a readme  and commit 
git remote add origin git@github.com:$username/$project_name.git
touch README.md
git add .
git commit -m "Initial commit"

#push to git and open in vs code
git push -u origin master
code .
