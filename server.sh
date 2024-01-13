sudo apt update
#sudo apt upgrade 
curl -fsSL https://deb.nodesource.com/setup_20.x |sudo -E bash -
sudo apt install -y nodejs
#rm -rf first_backend
#git clone https://github.com/Kal1-linux/first_backend.git
#cd first_backend/
echo "PORT = 3000" > .env
npm i
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#source ~/.nvm/nvm.sh
sudo rm -rf /usr/lib/node_modules/pm2
sudo npm install pm2 -g
pm2 stop all
pm2 delete all
pm2 start "npm start" --name "Api_v1"