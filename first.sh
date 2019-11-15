#! /bin/bash
if [ -f $1 ]
    then
     totalCount=$(tr -d '[:space:] ' < $1 | wc -c)
     for i in {a..z}
       do 
        count=$(grep -oi $i $1 | wc -l)
        percentage=$(bc <<< "scale=3; ($count/$totalCount)*100")
        echo $i : $percentage%
    done
      
else  
       echo "File Not exixts"
fi