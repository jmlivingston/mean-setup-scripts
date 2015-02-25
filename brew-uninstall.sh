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
brew --version