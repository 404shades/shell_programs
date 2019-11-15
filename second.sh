#! /bin/bash
if [ -d $1 ]
     then
        find $1 -name "*.sh" -exec sed -i.sh 's/\T/ /g' {} +
else
    echo "Directory Not  Specified"
fi
