 sudo apt-get  install -y  autotools-dev
 sudo apt-get  install -y  autoconf
 sudo apt-get  install -y  mosh
 sudo apt-get  install -y  pkg-config
 sudo apt-get  install -y  gcc make
 sudo apt-get  install -y  python3
 sudo apt-get  install -y  python3-pip
 sudo apt-get install -y athena-jot

sudo python3 -m pip install urwid

cd ~
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
rm ripgrep_13.0.0_amd64.deb

cd ~
git clone git://github.com/wting/autojump.git
~/autojump/uninstall.py
~/autojump/install.py

cd $HOME
sudo pip3 install fastcd

git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/universal-ctags/ctags.git ~/ctags
cd ~/ctags
./autogen.sh
./configure
make
sudo make install
cd $HOME
rm -rf ctags
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

~/scripts.conf/tmux.sh
cd ~/scripts.conf/

cp gitconfig ~/.gitconfig
cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp ./Default.bgptheme ~/.bash-git-prompt/themes/
source ~/.bashrc

mkdir -p ~/tmux
rm -rf ~/tmux/tmux-logging
git clone https://github.com/tmux-plugins/tmux-logging ~/tmux/tmux-logging
