echo "brew cleanup - you may need to click enter"
rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup
wait
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "brew version"
brew --version