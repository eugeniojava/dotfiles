#!/bin/bash

# GITHUB_PERSONAL
GITHUB_PERSONAL="git@github.com"
GITHUB_PERSONAL_NAME="Eugênio Moreira"
GITHUB_PERSONAL_EMAIL="me@eugeniomoreira.com"

# GITHUB_EMPLOYER
GITHUB_EMPLOYER="git@employer.github.com"
GITHUB_EMPLOYER_NAME="Eugênio Moreira"
GITHUB_EMPLOYER_EMAIL="eugenio.moreira@employer.com"

# MESSAGES
DEFAULT_ERROR_MESSAGE="Git repository config requires a different config. Done fixing it. Please redo the commit."

if [[ $(git remote -v) == *"$GITHUB_PERSONAL"* ]]; then
  if [[ $GIT_AUTHOR_NAME != "$GITHUB_PERSONAL_NAME" || $GIT_AUTHOR_EMAIL != "$GITHUB_PERSONAL_EMAIL" ]]; then
    echo "$DEFAULT_ERROR_MESSAGE"
    "$HOME"/.git_executables/set_personal.sh
    exit 1
  fi
fi
if [[ $(git remote -v) == *"$GITHUB_EMPLOYER"* ]]; then
  if [[ $GIT_AUTHOR_NAME != "$GITHUB_EMPLOYER_NAME" || $GIT_AUTHOR_EMAIL != "$GITHUB_EMPLOYER_EMAIL" ]]; then
    echo "$DEFAULT_ERROR_MESSAGE"
    "$HOME"/.git_executables/set_employer.sh
    exit 1
  fi
fi
exit 0
