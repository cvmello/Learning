#!/bin/bash
#!/bin/zsh
#Script que mostra informações sobre o sistema
#Autor: cvmello
#Todos os direitos compartilhados

clear

#Tela introdutória
echo "# SysInfo #"
echo

#Pede uma confirmação do usuário antes de executar
echo "Vou buscar os dados do sistema. Posso continuar? [sn]"
read nega

#Se o usuário digitou n ou N, vamos interromper o script
test "$nega" = "n" -o "$nega" = "N" && exit 
clear

#O date mostra a data e a hora correntes
echo "# Data e horário:"
echo
date
echo

#O df mostra as partições e quanto cada uma ocupa no disco
echo "# Utilização de disco:"
echo
df -h
echo

#O w mostra os usuários conectados ao sistema
echo "# Usuários conectados:"
echo
w
echo

#Exibe memória disponível
echo "# Memória disponível no sistema:"
free -m
echo 
