#bin!/bash
echo File Finder
echo what directory would you like to find?

read User
#echo $User
COMMAND_DIRECTORY="/c/Users/HansPeterJonasHogh-J/dev/repos/${User}"
echo $COMMAND_DIRECTORY
#go_to_directory=User input appneded to file path
if [ -d $COMMAND_DIRECTORY ]
then 
    echo "The $COMMAND_DIRECTORY exists"
    cd $COMMAND_DIRECTORY
    ls
else 
    echo "The $COMMAND_DIRECTORY does not exist"
fi

#escape code ""
#caps
#Keypasscd
#function or noun