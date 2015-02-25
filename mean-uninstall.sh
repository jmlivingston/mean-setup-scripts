echo "uninstalling grunt-cli"
npm uninstall -g grunt-cli
echo "uninstalling bower"
npm uninstall -g bower
echo "uninstalling yo"
npm uninstall -g yo
echo "uninstalling heroku-toolbelt"
brew uninstall heroku-toolbelt
echo "uninstalling mongod"
brew uninstall mongodb
echo "uninstalling git"
brew uninstall git
wait
echo "uninstalling nodejs"
brew uninstall node
wait 
echo "uninstalling npm"
npm uninstall npm -g
echo "mongo (should be command not found)"
mongo --version
echo "mondod (should be command not found)"
mongod --version
echo "git (should be command not found)"
git --version
echo "heroku (should be command not found)"
heroku --version
echo "node - npm (should be command not found)"
npm --version
echo "grunt (should be command not found)"
grunt --version
echo "bower (should be command not found)"
bower --version
echo "yo (should be command not found)"
yo --version