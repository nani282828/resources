echo '--------------install mysql server----------------'
sudo apt-get install -y mysql-server
echo '-------------install mysql client-----------------'
sudo apt-get install -y mysql-client
echo '------------------------installling pip-----------'
sudo apt-get install -y python-pip
echo '-----------------------installing git------------'
sudo apt-get install -y git
echo '-----------------------installing skype-----------'
sudo apt-get install -y libqt4-dbus libqt4-network libqt4-xml libasound2
wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
sudo dpkg -i getskype-*
sudo apt-get -f install
echo '-----------------------installing virtualenv-------'
sudo apt-get install -y python-virtualenv
#installing mongodb
echo '----------------install mongodb--------------------------'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
#install java for pycharm
echo '-----------------java installation for pycharm-------------'
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java7-installer
#installing pycharm
echo '--------------pycharm installation--------------------------'
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -sc)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install -y pycharm
echo '-------------------------installing django----------------'
pip  install django
echo '-------------------------install python mysqldb-----------'
sudo apt-get install -y python-mysqldb
echo '-------------------------installing pyjwt-----------------'
sudo pip install PyJwt
echo '-------------------------install ipython------------------'
sudo apt-get install -y ipython
echo '-------------------------installing sublime text 3-------------'
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

echo '-----------------------installing nodejs and npm---------------'
sudo apt-get update
sudo apt-get install -y nodejs
sudo apt-get install -y nodjs-legacy
sudo apt-get install -y npm

echo '--------------------------install bower------------------------'
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
npm install -g bower
echo '----------------------installing scrapy-----------------------'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7
echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | sudo tee /etc/apt/sources.list.d/scrapy.list
sudo apt-get update && sudo apt-get install scrapy

echo '--------------install hubstaff--------------------'
wget https://hubstaff-production.s3.amazonaws.com/downloads/HubstaffClient/Builds/Release/1.2.1-79428cc/Hubstaff-1.2.1-79428cc.sh


sudo chmod 777 Hubstaff-1.2.1-79428cc.sh
./Hubstaff-1.2.1-79428cc.sh
