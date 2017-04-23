#! /bin/bash

# プログラミング教室用初期セットアップスクリプト
# pg_setup.shをホームディレクトリから実行してください
# python3専用のanaconda開発環境を構築します

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install pyenv
cat <<EOF > ~/.bash_profile
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
EOF
echo 'export PYENV_ROOT="${HOME}/.pyenv"' >> ~/.bash_profile
echo 'export PATH="${PYENV_ROOT}/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
exec $SHELL -l
