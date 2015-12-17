#!/bin/sh
echo "===============================================================";
echo "====================Interworx Ioncube Instalation==============";
echo "==================== on CentOS 7.x X86_64 =====================";
echo "===============================================================";
sleep 4
echo "===================Your system PHP version is:=================";
php -v
echo "===============================================================";
echo "===============================================================";
echo "Downloading the source files";
sleep 2
wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.zip
echo "===============================================================";
echo "======================Download is done=========================";
echo "===============================================================";
sleep 3
unzip ioncube_loaders_lin_x86-64.zip
rm -rf ioncube_loaders_lin_x86-64.zip
echo "===============================================================";
echo "===============================================================";
echo "Done!";
cd ioncube
mv ioncube_loader_lin_5.4.so /usr/lib64/php/modules/ioncube_loader_lin_5.4.so
touch /etc/php.d/ioncube.ini
cd 
cd /etc/php.d
echo ";Enable ioncube extension module
zend_extension = /usr/lib64/php/modules/ioncube_loader_lin_5.4.so" > ioncube.ini
cd
rm -rf ioncube
echo "===============================================================";
echo "====================Restarting apache==========================";
echo "===============================================================";
service httpd restart
sleep 3
echo "====================PHP version is:============================";
echo "===============================================================";
php -v 
echo "===============================================================";
sleep 3
echo "====================Questions? Comments? ==================";
echo "==============  Contact me: https://github.com/KeiroD/InterWorx-Scripts/issues  ===========";
sleep 3
exit
