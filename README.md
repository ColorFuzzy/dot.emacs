# todos

- setup daemon mode
- stop create .#init.el file
- fuzzy company mode
- add fzf mode with helm - or - shackle-mode

# install latest emacs on ubuntu

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs25  // emacs25-nox terminal only

# item2/emacs setup

- In the "Keys" tab in configuration, change "Left Command" to map to the "Right Option" key
- Under the "Profiles" tab changed "Right Option" key to act as Esc

# install basic tools

## install fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

## install ag

sudo apt-get install silversearcher-ag  // linux
brew install the_silver_searcher  // mac

## install gnu global

sudo apt-get install curl wget ncurses-dev exuberant-ctags
wget http://tamacom.com/global/global-6.5.7.tar.gz

./configure
make
sudo make install