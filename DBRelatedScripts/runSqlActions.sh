#! /bin/bash

lastFileRun=`cat /etc/donorsconnect/last.migration`

for fileName in `ls /etc/donorsconnect/Donor-Connect-App/SqlFiles | sort`
do
   if [ $fileName \> $lastFileRun ]
   then
       mysql -u root donor_connect < /etc/donorsconnect/Donor-Connect-App/SqlFiles/$fileName
       echo $fileName > /etc/donorsconnect/last.migration
   fi
done 
