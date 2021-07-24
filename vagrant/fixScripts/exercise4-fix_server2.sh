Sudo nano /etc/hosts
#Add the details of server1
192.168.100.10 server1
#generate a public key..with no passphrase
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
#copy the generated public key from 'id_rsa.pub' folder and paste it into 'authorized_keys'  in server1
nano ~/.ssh/authorized_keys
#paste the generated public key of server1 into the 'authorized_keys' folder here in server2 and exit

