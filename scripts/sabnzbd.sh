echo "Installing sabnzbdplus"
apt-get --assume-yes install sabnzbdplus > /dev/null

sed -i '/USER=/c\USER=vagrant' /etc/default/sabnzbdplus
sed -i '/CONFIG=/c\#CONFIG=' /etc/default/sabnzbdplus
sed -i '/HOST=/c\HOST=0.0.0.0' /etc/default/sabnzbdplus
sed -i '/PORT=/c\#PORT=' /etc/default/sabnzbdplus

service sabnzbdplus start
