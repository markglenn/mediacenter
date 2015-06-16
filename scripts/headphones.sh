echo "Installing headphones"

if [ ! -d "/opt/headphones" ]; then
  git clone https://github.com/rembo10/headphones.git /opt/headphones
else
  # Directory already exists.  Hard reset the repo
  cd /opt/headphones
  git fetch
  git reset --hard origin/master
fi

chown -R vagrant:vagrant /opt/headphones
ln -s /opt/headphones/init-scripts/init.ubuntu /etc/init.d/headphones
chmod +x /etc/init.d/headphones
cp /opt/config/headphones /etc/default/headphones

update-rc.d -f headphones remove
update-rc.d headphones defaults

if [[ -z $(ps -ef | grep headphones | grep -v grep) ]]; then
  service headphones start
fi
