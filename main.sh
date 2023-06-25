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
    --help)
       echo "###########  HELP  #########"
       echo "--date - wyswietla date"
       echo "--logs - tworzy 100 plikow z nazwa pliku, nazwa skryptu, data"
       echo "     arg[]: x - tworzy x plikow --logs, uzycie --logs x np --logs 30"
       echo "--help - wyswietla help'a"
    shift
    ;;
  esac
done





