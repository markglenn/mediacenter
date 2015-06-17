echo "Installing couchpotato"

if [ ! -d "/opt/couchpotato" ]; then
  git clone https://github.com/RuudBurger/CouchPotatoServer.git /opt/couchpotato
else
  # Directory already exists.  Hard reset the repo
  cd /opt/couchpotato
  git fetch
  git reset --hard @{u}
fi

chown -R vagrant:vagrant /opt/couchpotato
cp /opt/couchpotato/init/ubuntu /etc/init.d/couchpotato
chmod +x /etc/init.d/couchpotato
cp /opt/config/couchpotato /etc/default/couchpotato

update-rc.d -f couchpotato remove
update-rc.d couchpotato defaults

if [[ -z $(ps -ef | grep couchpotato | grep -v grep) ]]; then
  service couchpotato start
fi
