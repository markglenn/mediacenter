export DEBIAN_FRONTEND=noninteractive
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

echo "Updating apt-get"

apt-get --assume-yes autoremove > /dev/null
apt-add-repository multiverse > /dev/null
apt-get update > /dev/null

echo "Installing git"
apt-get --assume-yes install git > /dev/null

mkdir -p /opt
