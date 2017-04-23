# 先にpg_setup.sh を実行してください

pyenv install anaconda3-4.3.1
pyenv global anaconda3-4.3.1
echo 'export PATH="$PYENV_ROOT/versions/anaconda3-4.3.1/bin/:$PATH"' >> ~/.bashrc
conda update -y conda
conda update -y --all
conda create -n uec python=3.6 anaconda
exec $SHELL -l
