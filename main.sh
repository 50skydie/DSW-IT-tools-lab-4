#!/bin/bash

while [[ $# -gt 0 ]]; do
  case $1 in
    --date | -d)
        echo $(date)
      shift
      break
      ;;
    --logs | -l)
       if [ $# -eq 2 ]
           then
           for ((i = 0; i <= $2; i++ ))
               do  
               echo "log"$i.txt, $0, $(date) >log$i/ log$i.txt
           done
       else
           for i in {1..100}
               do
               echo "log"$i.txt, $0, $(date) > log$i/log$i.txt
            done
       fi
       shift
       break
       ;;
    --help | -h)
       echo "###########  HELP  #########"
       echo "--date | -d - wyswietla date"
       echo "--logs | -l - tworzy 100 plikow z nazwa pliku, nazwa skryptu, data"
       echo "     arg[]: x - tworzy x plikow --logs, uzycie --logs x np --logs 30"
       echo "--help | -h - wyswietla help'a"
       echo "--innit | -i - kolnuje repozytorium do obecnego folderu"
       echo "--error | -e - tworzy pliki jak --logs, rowniez posiada 1 argument x - ilosc plikow (domyslnie 100)"
    shift
    ;;
    --innit | -i)
       git clone https://github.com/50skydie/DSW-IT-tools-lab-4/tree/mainBranch
    shift
    ;;
    --error | e)
       if [ $# -eq 2 ]
           then
           for ((i = 0; i <= $2; i++ ))
               do  
               echo "error"$i.txt, $0, $(date) >error$i/ error$i.txt
           done
       else
           for i in {1..100}
               do
               echo "error"$i.txt, $0, $(date) > error$i/error$i.txt
            done
       fi
       shift
       break
       ;;

  esac
done





