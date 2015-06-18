echo "Installing plexupdate"

if [ ! -d "/opt/plexupdate" ]; then
  git clone https://github.com/mrworf/plexupdate.git /opt/plexupdate
else
  # Directory already exists.  Hard reset the repo
  cd /opt/plexupdate
  git fetch
  git reset --hard @{u}
fi

chown -R vagrant:vagrant /opt/plexupdate

cd /opt/plexupdate
./plexupdate.sh -p -a || true
