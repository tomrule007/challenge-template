#!/bin/bash
#
# JavaScript Challenge Problem Scaffolding
# (may need to make excutable with: chmod +x new-challenge.sh)
#
# TODO: Make more interactive (checking for git / npm inits and giving users options)


# Get script path
SCRIPTPATH=$(dirname $(readlink -f "$0"))
echo $SCRIPTPATH

# Make sure parameter is provided
if [ $# -eq 0 ]; then
    echo "Must provide path argument to new challenge folder"
    echo "Example: \$./challenge-template/create.sh ./some-folder/my-challenge-name"
    exit 1
fi

# Check if directory already exsists 
if [ -d "${1}" ] ; then
    echo "Pick a new name: $1 already exsists!"
    exit 1
fi

# The new challenge problem directory
dir=$1

# option for users to pass in --name parameter
# will be prompted if not passed in
# https://brianchildress.co/named-parameters-in-bash/
while [ $# -gt 0 ]; do

   if [[ $1 == *"--"* ]]; then
        param="${1/--/}"
        declare $param="$2"
   fi

  shift
done

if [ -z "$name" ]; then
echo "What is the challenge function name?"
read name
fi

cp -r "$SCRIPTPATH/template" $dir

# Swap in provided function name
sed -i "s/myFunction/$name/g" $dir/index.js
sed -i "s/myFunction/$name/g" $dir/index.test.js
