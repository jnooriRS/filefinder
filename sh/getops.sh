#!/bin/bash
APPLICATION_VERSION="1.0"
APPLICATION_HELP="SOME HELP TEXT"

function help(){
        echo "h${APPLICATION_HELP}"
        exit 0
}


function versionapp(){
    echo "v${APPLICATION_VERSION}"
    exit 0
}

 while getopts "hv::o:" arg; do
  case $arg in
    h)
      echo "HELP"
      ;;
    v)
      echo "VERSION"
      ;;
    o)
      OUTPUT=$OPTARG
      echo "output:${OUTPUT}"
      ;;
  esac
done
function check(){
   
    echo "Hello fucntion"
    while getopts "vh" option; do
    case $option in
    v) 
    echo "Hello Version"
     versionapp
    ;;
    h) 
    echo "Hello help"
     help
    ;;
    \? )
    echo "You have entered an invalid option. The valid options are [r], [y], and [g]"
    ;;
    esac
    done
}
check