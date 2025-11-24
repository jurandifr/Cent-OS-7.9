#!/bin/bash
# Script para instalar Pyenv + OpenSSL atualizado no CentOS/RHEL

set -e  # Faz o script parar se algum comando falhar

echo ">>> Passo 1 - Configurar repositórios"
sudo yum install epel-release -y

echo ">>> Passo 2 - Instalar Development Tools e dependências"
sudo yum groupinstall -y "Development Tools"
sudo yum install -y gcc gcc-c++ make \
    zlib-devel bzip2 bzip2-devel \
    readline-devel sqlite sqlite-devel \
    xz xz-devel \
    libffi-devel \
    wget curl git tar

echo ">>> Passo 3 - Instalar Pyenv"
if [ ! -d "$HOME/.pyenv" ]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

grep -qxF 'export PYENV_ROOT="$HOME/.pyenv"' ~/.bashrc || echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
grep -qxF 'export PATH="$PYENV_ROOT/bin:$PATH"' ~/.bashrc || echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
grep -qxF 'eval "$(pyenv init -)"' ~/.bashrc || echo 'eval "$(pyenv init -)"' >> ~/.bashrc

source ~/.bashrc

echo ">>> Passo 4 - Instalar OpenSSL atualizado"
wget https://www.openssl.org/source/openssl-1.1.1w.tar.gz
tar -xvf openssl-1.1.1w.tar.gz
cd openssl-1.1.1w
./config --prefix=/usr/local/openssl --openssldir=/usr/local/openssl
make -j$(nproc)
sudo make install
cd ..

echo ">>> Passo 5 - Instalar OpenSSL dev"
sudo yum install openssl11-devel -y

echo ">>> Passo 6 - Configurar variáveis de ambiente"
export LDFLAGS="-L/usr/local/openssl/lib"
export CPPFLAGS="-I/usr/local/openssl/include"
export PKG_CONFIG_PATH="/usr/local/openssl/lib/pkgconfig"

echo ">>> Passo 7 - Instalar Python 3.10.19 via Pyenv"
pyenv install 3.10.19

echo ">>> Instalação concluída com sucesso!"
