#!/bin/bash

while [[ $# -gt 0 ]]; do
  case $1 in
    --date)
      	echo $(date)
      shift
      break
      ;;
    --logs)
       for i in {1..100}
          do
          echo "log"$i.txt, $0, $(date)  > log$i.txt
       done
       shift
       break
       ;;
  esac
done





