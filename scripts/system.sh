echo "Updating apt-get"
apt-add-repository multiverse > /dev/null
apt-get update > /dev/null
apt-get --assume-yes install git > /dev/null

mkdir -p /opt
