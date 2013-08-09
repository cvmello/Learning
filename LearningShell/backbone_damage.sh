#!/bin/bash
#Script que auxilia no calculo de afetacao do Backbone
#Autor: cvmello

clear

#Declara constantes
declare -r const_links=59
declare -r const_email='cvmello@embratel.net.br'

#Cabecalho inicial
echo ' # Calculadora de Afetação Backbone #'
echo '- Última atualização do programa:' $const_links 'links -'
echo '- Em caso de alteracao, contate:' $const_email '-'
echo

#Calcula percentual de perda 
echo 'Insira o número de links internacionais: '
read total_links
echo 'Insira o número de links afetados: '
read links_fora
porcentagem=$(((links_fora*100)/total_links))
echo 'Afetação de '$porcentagem'% da saída do Backbone IP Internacional.' 
echo 
echo 'Programa executado em:'; date
echo