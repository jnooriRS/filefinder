#!/bin/bash
while getopts "ryg" option; do
case ${option} in
r )
echo "My favorite color is red"
;;
y )
echo "My favourite color is yellow"
;;
g )
echo "My favrioute color is green"
;;
\? )
echo "You have entered an invalid option. The valid options are [r], [y], and [g]"
;;
esac
done