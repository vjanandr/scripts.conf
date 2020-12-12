mkdir fastcd
git clone https://github.com/frazenshtein/fastcd ~/fastcd
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone git://github.com/joelthelion/autojump.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get install -y autojump

cp .bashrc ~/.bashrc
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
