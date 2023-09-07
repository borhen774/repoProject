#!/bin/bash

read REQUIREMENT

case $REQUIREMENT in

  "Remote Connected")
    cd /home/codio/workspace/repoProject
    git remote> /dev/null; echo $?
    ;;

  "Push")
    cd /home/codio/workspace/repoProject
    git diff @{upstream}; echo $?
    ;;

  *)
    echo $REQUIREMENT Unknown
    ;;
esac
