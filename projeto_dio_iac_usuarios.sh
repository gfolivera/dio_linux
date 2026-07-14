#!/bin/bash

echo "Apagando usuários"
echo "Grupo ADM"

userdel carlos -rf
userdel maria -rf
userdel joao -rf

echo "Grupo VEN"

userdel debora -rf
userdel sebastiana -rf
userdel roberto -rf


echo "Grupo SEC"

userdel josefina -rf
userdel amanda -rf
userdel rogerio -rf

echo "Criando diretórios"

mkdir /publico /adm /ven /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários GRP_ADM"

useradd carlos -s /bin/bash -c "Carlos" -G GRP_ADM
useradd maria -s /bin/bash -c "Maria" -G GRP_ADM
useradd joao -s /bin/bash -c "João" -G GRP_ADM

echo "Criando usuários GRP_VEN"


useradd debora -s /bin/bash -c "Debora" -G GRP_VEN
useradd sebastiana -s /bin/bash -c "Maria" -G GRP_VEN
useradd roberto -s /bin/bash -c "Roberto" -G GRP_VEN


echo "Criando usuários GRP_SEC"

useradd josefina -s /bin/bash -c "Josefina" -G GRP_SEC
useradd amanda -s /bin/bash -c "Amanda" -G GRP_SEC
useradd rogerio -s /bin/bash -c "Rogério" -G GRP_SEC


echo "Alterando posse"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Alterando permissões"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

