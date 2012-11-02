#Create GO-Server public key and copy to project servers
cd ~
rm -f go_user go_user.pub
ssh-keygen -f go_user -t dsa -N ''

rm -rf go_ssh
mkdir -p go_ssh/.ssh
cp go_user.pub go_ssh/.ssh/authorized_keys

scp -r ~/go_ssh/.ssh root@10.10.4.121:~/
scp -r ~/go_shh/.ssh root@10.10.4.122:~/
scp -r ~/go_ssh/.ssh root@10.10.4.123:~/

mv -f ~/go_user /var/go/.ssh/id_dsa
mv -f ~/go_user.pub /var/go/.ssh/id_dsa.pub

chmod -R 755 /var/go/.ssh
