 brew install  autotools-dev
 brew install  autoconf
 brew install  mosh
 brew install  pkg-config
 brew install  gcc make
 brew install  python3
 brew install  python3-pip
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
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


~/scripts.conf/tmux.sh
cd ~/scripts.conf/

cp gitconfig ~/.gitconfig
cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp ./config.fish ~/.config/fish/
mkdir -p ~/.config/fish/functions/
cp ./fish_prompt.fish ~/.config/fish/functions/
cp ./fish_user_key_bindings.fish ~/.config/fish/functions
source ~/.bashrc
cat ~/scripts.conf/mac_pub_key/id_rsa.pub >> ~/.ssh/authorized_keys

