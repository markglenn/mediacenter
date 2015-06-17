echo "Installing sickbeard"
if [ ! -d "/opt/sickbeard" ]; then
  git clone git://github.com/midgetspy/Sick-Beard.git /opt/sickbeard
else
  # Directory already exists.  Hard reset the repo
  cd /opt/sickbeard
  git fetch
  git reset --hard @{u}
fi

chown -R vagrant:vagrant /opt/sickbeard
ln -s /opt/sickbeard/init.ubuntu /etc/init.d/sickbeard
chmod +x /etc/init.d/sickbeard
cp /opt/config/sickbeard /etc/default/sickbeard

update-rc.d -f sickbeard remove
update-rc.d sickbeard defaults

if [[ -z $(ps -ef | grep sickbeard | grep -v grep) ]]; then
  service sickbeard start
fi
