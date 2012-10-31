#! /bin/bash 
 
### get the last SQL File run 
lastFileRun=`cat ../SQLChanges` 
 
###If out.sql already exists , delete it 
if [ -f 'out.sql' ] 
then  
  rm out.sql 
fi 
 
### Get every new Sql File and put its content in out.sql 
for fileName in `ls Donor-Connect-App/SqlFiles | cut -d / -f2` 
do 
    if [ $fileName \> $lastFileRun ] 
    then 
       echo `cat Donor-Connect-App/SqlFiles/$fileName` >> out.sql 
    fi 
done 
 
### if there was no new sql file, create an empty out.sql file 
if [ ! -f 'out.sql' ] 
then 
   touch out.sql 
fi 
