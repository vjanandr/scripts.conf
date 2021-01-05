git clone https://github.com/frazenshtein/fastcd ~/fastcd
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install -y autojump
git clone https://github.com/universal-ctags/ctags.git ~/ctags
cd ~/ctags
./autogen.sh
./configure
make
sudo make install

cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
mkdir -p /home/vijayr-ovm/.config/fish/functions/
cp ./fish_prompt.fish /home/vijayr-ovm/.config/fish/functions/
cp ./fish_user_key_bindings.fish /home/vijayr-ovm/.config/fish/functions
