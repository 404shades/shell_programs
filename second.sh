#! /bin/bash
if [ -d $1 ]
     then
        find $1 -name "*.java" -exec sed -i.sh $'s/\t/  /' {} +
else
    echo "Directory Not  Specified"
fi
