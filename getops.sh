#!/bin/bash
APPLICATION_VERSION="1.0"
APPLICATION_HELP="SOME HELP TEXT"

function help(){
echo "h${APPLICATION_HELP}"
exit 0

}

function version(){
    echo "v${APPLICATION_VERSION}"
    exit 0
}

function check(){
    while getops "vh" opt; do
    case ${opt} in
    v) 
     version
    ;;
    h) 
     help
    ;;
    esac
    fi
done
}