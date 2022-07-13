#!/bin/bash
APPLICATION_VERSION="1.0"
APPLICATION_HELP="SOME HELP TEXT"

function help(){
        echo "h${APPLICATION_HELP}"
        exit 0
}
help

function versionapp(){
    echo "v${APPLICATION_VERSION}"
    exit 0
}
versionapp

function check(){
    while getopts "vh" option; do
    case $option in
    v) 
     versionapp
    ;;
    h) 
     help
    ;;
    \? )
    echo "You have entered an invalid option. The valid options are [r], [y], and [g]"
    ;;
    esac
    done
}
check