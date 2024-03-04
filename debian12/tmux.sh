sudo apt install tmux -y

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "source-file ~/.tmux/tmux.conf" > ~/.config/tmux/tmux.conf
curl https://raw.githubusercontent.com/hinnerhaus/linux/main/debian12/tmux.conf > ~/.tmux/tmux.conf
