echo "brew cleanup - you may need to click enter"
rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup
wait
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" 
wait
brew install mongodb
wait
brew install git
wait
brew install heroku-toolbelt
wait
brew install node
wait
npm install -g grunt-cli
wait
npm install -g bower
wait
npm install -g yo
wait
echo "brew version"
brew --version
echo "mongo"
mongo --version
echo "mondod"
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