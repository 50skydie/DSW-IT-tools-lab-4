#!/bin/bash

while [[ $# -gt 0 ]]; do
  case $1 in
    --date)
      	echo $(date)
      shift
      ;;
  esac
done




