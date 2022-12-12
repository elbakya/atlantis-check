#mkdir scripts
#touch local-setup.sh

current_path=$(pwd)
set -e
ATLANTIS_VERSION=v0.21.0
ATLANTIS_PACKAGE=atlantis_darwin_amd64.zip

echo "Downloading atlantis lib"
curl -O https://github.com/runatlantis/atlantis/releases/download/v0.21.0/atlantis_linux_386.zip 
unzip ${ATLANTIS_PACKAGE}

echo "Downloading ngrok: To have access to the internet"
curl -O https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
unzip ngrok-stable-darwin-amd64.zip -d /usr/local/bin

echo "Generate random secret string"
echo $RANDOM | md5sum | head -c 20; echo;
