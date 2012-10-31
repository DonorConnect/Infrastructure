#! /bin/bash
if [ -f 'out.sql' ]
then
mysql -u root donor_connect < out.sql
fi
