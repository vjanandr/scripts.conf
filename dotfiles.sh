brew install autotools-dev
brew install autoconf
brew install mosh
brew install pkg-config
brew install gcc make
brew install python3
brew install python3-pip
brew install athena-jot
brew install zsh
brew install ripgrep
brew install wget

sudo python3 -m pip install urwid

cd ~
git clone git://github.com/wting/autojump.git
~/autojump/uninstall.py
~/autojump/install.py

cd $HOME
sudo pip3 install fastcd

git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

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
cp ./zshrc ~/.zshrc
source ~/.bashrc

mkdir -p ~/tmux
rm -rf ~/tmux/tmux-logging
git clone https://github.com/tmux-plugins/tmux-logging ~/tmux/tmux-logging
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp ~/scripts.conf/candy.zsh-theme ~/.oh-my-zsh/themes/
