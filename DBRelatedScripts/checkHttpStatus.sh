for i in {1..10}
do
 (curl -i http://10.10.4.122:8080/Donor-Connect-App/ | grep '200 OK') && exit 0;
 sleep 2
done
exit 1
