#!/bin/bash


echo "criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando diretorios..."

mkdir /publico /adm /ven /sec

echo "Criando Usuarios e inserindo-os a grupos..."

useradd carlos -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd carlos -e

useradd maria -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e

useradd joao_ -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd joao_ -e

useradd debora -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd rogerio -e


echo "Configurando as respectivas permissões de grupos e diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
