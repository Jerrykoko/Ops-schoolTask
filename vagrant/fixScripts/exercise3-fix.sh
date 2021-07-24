#What did I get? 


#Error message: Forbidden
#Error message: You don't have permission to access this resource.
#first check what webserver is running
cd var
service --status-all
#check apache service status..to see if it is running with the comand below
service apache2 status
#check if you can curl it locally
curl localhost

#check which user is running apache
ps -aus | grep apache2

#checking the logs, i found 'client denied by server configuration...running by '/var/www/html'
cat /var/log/apache2/error.log
#check what permision '/var/www/' has
ls -l /var/www
#change ownership of 'user and group' from being 'root and root' to being 'www-data' and 'www-data'wth the command below

sudo chown -R www-data:www-data /var/www
sudo service apache2 restart





#grant access to apache2 service 
#change the value of 'require all' variable from 'denied' to 'granted'
sudo nano /etc/apache2/sites-enabled/000-default.conf
sudo service apache2 restart


#cnfiure the newor iterface of enp0s8 and bring it up
ip addr show
sudo su
apt install net-tools
ifconfig enp0s8 192.168.100.10 netmask 255.255.255.0 up

#Now is I can see the message 'Hello world'

