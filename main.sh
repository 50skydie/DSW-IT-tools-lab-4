#!/bin/bash

while [[ $# -gt 0 ]]; do
  case $1 in
    --date)
        echo $(date)
      shift
      break
      ;;
    --logs)
       if [ $# -eq 2 ]
           then
           echo $2
           for ((i = 0; i <= $2; i++ ))
               do  
               echo "log"$i.txt, $0, $(date) > log$i.txt
           done
       else
           for i in {1..100}
               do
               echo "log"$i.txt, $0, $(date) > log$i.txt
            done
       fi
       shift
       break
       ;;
  esac
done





