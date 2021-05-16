sudo apt-get install -y autotools-dev
sudo apt-get install -y autoconf
sudo apt-get install -y mosh
sudo apt-get install -y pkg-config
sudo apt-get install -y gcc make
sudo apt-get install -y python3
sudo apt-get install -y python3-pip
sudo python3 -m pip install urwid

cd ~
git clone git://github.com/wting/autojump.git
~/autojump/uninstall.py
~/autojump/install.py

cd $HOME
git clone https://github.com/frazenshtein/fastcd
python fastcd/fastcd/__main__.py install

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

~/scripts.conf/tmux.sh
cd ~/scripts.conf/

cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp ./config.fish ~/.config/fish/
mkdir -p ~/.config/fish/functions/
cp ./fish_prompt.fish ~/.config/fish/functions/
cp ./fish_user_key_bindings.fish ~/.config/fish/functions
source ~/.bashrc
