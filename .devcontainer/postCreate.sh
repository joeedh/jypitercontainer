# setup git autocompletion and copy our slightly customized
# .bashrc
cp .devcontainer/.bashrc /home/vscode
cp .devcontainer/git-completion.bash /home/vscode

source ~/anaconda3/bin/activate
conda init --all

echo "Reloading .bashrc (ignore 'open new shell' warning above)"
source ~/.bashrc
