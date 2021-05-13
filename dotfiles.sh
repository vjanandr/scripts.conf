git clone https://github.com/frazenshtein/fastcd ~/fastcd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install -y autojump
sudo apt-get install -y autotools-dev.
sudo apt-get install -y autoconf
sudo apt-get install -y mosh
sudo apt-get install -y pkg-config

git clone https://github.com/universal-ctags/ctags.git ~/ctags

cd ~/ctags
./autogen.sh
./configure
make
sudo make install

~/scripts.conf/tmux.sh
cd ~/scripts.conf/

cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
cp ./config.fish ~/.config/fish/
mkdir -p ~/.config/fish/functions/
cp ./fish_prompt.fish ~/.config/fish/functions/
cp ./fish_user_key_bindings.fish ~/.config/fish/functions
