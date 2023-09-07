#!/bin/bash


read REQUIREMENT

case $REQUIREMENT in

  "File Made")
    [[ -e /home/codio/workspace/repoProject/find_config.sh ]]; echo $?
    ;;

  "Line Added")
    grep "*.conf" /home/codio/workspace/repoProject/find_config.sh > /dev/null; echo $?
    ;;

  "Committed")
    cd /home/codio/workspace/repoProject
    git branch --contains $COMMIT_ID> /dev/null; echo $?
    ;;

  *)
    echo $REQUIREMENT Unknown
    ;;
esac
