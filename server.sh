sudo apt update
#sudo apt upgrade 
#curl -fsSL https://deb.nodesource.com/setup_20.x |sudo -E bash -
#sudo apt install -y nodejs
#rm -rf first_backend
#git clone https://github.com/Kal1-linux/first_backend.git
#cd first_backend/
echo "PORT = 3000" > .env
npm i
sudo npm install -g pm2 
sudo npm install -g npm@10.2.5
pm2 stop "Api_v1"
pm2 start "npm start" --name "Api_v1"
pm2 logs