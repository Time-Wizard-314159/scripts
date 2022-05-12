sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install node