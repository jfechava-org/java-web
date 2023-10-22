#!/bin/bash
##############################################################
# @Author:  John Echavarria - GFT                            #
# @Version: 1.0                                              #
# @Descripcion: Create a Github repo using Github API.       #
# @Fecha: 23 October, 2023.                                  #
##############################################################
#Load variables
REPO_NAME="$1"
TOKEN="$2"

# Create a folder
mkdir ./$REPO_NAME

# Initial configuration for git
git config --global user.email "support@metro-ito.com"
git config --global user.name "support"

# Create a repo using the Github API
curl -L \
-X POST \
-H "Accept: application/vnd.github+json" \
-H "Authorization: Bearer $TOKEN" \
-H "X-GitHub-Api-Version: 2022-11-28" \
https://api.github.com/orgs/jfechava-org/repos \
-d '{"name":"$REPO_NAME","description":"New Repo from API","homepage":"https://github.com","private":false,"has_issues":true,"has_projects":true,"has_wiki":true}'
