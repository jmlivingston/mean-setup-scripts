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
brew --version
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
wait
echo "uninstalling brew"
function abort {
  echo "$1"
  exit 1
} 
set -e 
/usr/bin/which -s git || abort "brew install git first!"
test -d /usr/local/.git || abort "brew update first!" 
cd `brew --prefix`
git checkout master
git ls-files -z | pbcopy
rm -rf Cellar
bin/brew prune
pbpaste | xargs -0 rm
rm -r Library/Homebrew Library/Aliases Library/Formula Library/Contributions 
test -d Library/LinkedKegs && rm -r Library/LinkedKegs
rmdir -p bin Library share/man/man1 2> /dev/null
rm -rf .git
rm -rf ~/Library/Caches/Homebrew
rm -rf ~/Library/Logs/Homebrew
rm -rf /Library/Caches/Homebrew
wait
echo "brew version (should be command not found)"