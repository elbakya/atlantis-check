sudo yum update
current_path=$(pwd)
set -e
ATLANTIS_VERSION=v0.21.0
ATLANTIS_PACKAGE=atlantis_darwin_amd64.zip
sudo yum install unzip

echo "Downloading atlantis lib"
wget https://github.com/runatlantis/atlantis/releases/download/${ATLANTIS_VERSION}/${ATLANTIS_PACKAGE}
unzip ${ATLANTIS_PACKAGE}

echo "Downloading ngrok: To have access to the internet"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
unzip ngrok-stable-darwin-amd64.zip 

echo "Generate random secret string"
echo $RANDOM | md5sum | head -c 20; echo;

