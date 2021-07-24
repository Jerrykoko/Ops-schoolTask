sudo nano /etc/hosts
#Add the details of server2
192.168.100.11 server2
#generate a public key ...with no passpharse
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
#copy the generated public key from 'id_rsa.pub' folder and paste it into 'authorized_keys'  in server2
nano ~/.ssh/authorized_keys
#paste the generated public key of server2 into the 'authorized_keys' folder here in server1 and exit
