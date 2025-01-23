#!/bin/bash

echo "==> Parando o serviço do MySQL..."
sudo systemctl stop mysql

echo "==> Desinstalando pacotes do MySQL..."
sudo apt-get purge -y mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*

echo "==> Removendo pacotes e dependências não utilizadas..."
sudo apt-get autoremove -y
sudo apt-get autoclean -y

echo "==> Removendo arquivos de configuração e diretórios do MySQL..."
sudo rm -rf /etc/mysql /var/lib/mysql /var/log/mysql /var/log/mysql.* /usr/lib/mysql /usr/include/mysql

echo "==> Procurando por arquivos residuais relacionados ao MySQL..."
sudo find / -name 'mysql*' -exec rm -rf {} + 2>/dev/null

echo "==> Atualizando lista de pacotes..."
sudo apt-get update -y

echo "==> Verificando se o MySQL foi completamente removido..."
if dpkg -l | grep -q mysql; then
    echo "Ainda existem pacotes relacionados ao MySQL instalados. Verifique manualmente."
else
    echo "MySQL completamente desinstalado e todas as configurações removidas."
fi
