#bin!/bash
echo File Finder
echo what directory would you like to find?

read User
echo $User
#go_to_directory=User input appneded to file path
if [ -d $go_to_directory ]
then 
    echo "The $go_to_directory exists"
    cd $got_to_directory
    ls
else 
    echo "The $got_to_directory does not exist"