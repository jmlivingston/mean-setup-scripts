brew install mongodb
wait
brew install git
wait
brew install heroku-toolbelt
wait
brew install node
wait
sudo brew postinstall node
wait
sudo npm install -g grunt-cli
wait
sudo npm install -g bower
wait
sudo npm install -g yo
wait
echo "mongo"
mongo --version
echo "mongod"
mongod --version
echo "git"
git --version
echo "heroku"
heroku --version
echo "node - npm"
npm --version
echo "grunt"
grunt --version
echo "bower"
bower --version
echo "yo"
yo --version