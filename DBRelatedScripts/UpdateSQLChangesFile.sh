#! /bin/bash
latestfile=`ls ../Commit/Donor-Connect-App/SqlFiles/ | tail -1`
echo $latestfile > ../SQLChanges
