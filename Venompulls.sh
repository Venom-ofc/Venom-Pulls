#!/usr/bin/env bash

<<Venom
#ঔৣ͜͡➳ VENOM PULLS
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Nome da script: Painel VENOM PULLS                         |
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Script     : VENOM PULLS PAINEL                                |
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Descrição: | painel para consulta e ferramentas de hack
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Versão    : 0.3                                      |
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Autor    : Venom, Eduardo e Mike                   |
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Data       : 08/08/21                                 |
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Licenças    : MIT lincese                              |
 #--------------------------------------------------------
 #ঔৣ͜͡➳ Uso: bash Venompulls.sh                                       |
 #--------------------------------------------------------
 #VENOM PULLS
Venom

source .funções/.variables.sh
source .funções/.funções.sh
chmod +x *
test -f README.md && rm README.md
access
ret="$?"
[[ ${ret} -eq 1 ]] && banner && exit 0
[[ ${ret} -eq 11 ]] && banner && exit 11
downloads

while :; do
    clear
    banner
    banner_menu
    read_num
    [[ $? -eq 11 ]] && exit 11

    case ${inputuse} in
        00) exit 0;;
        0) exit 0;;
        1) loading; cep;;
        01) loading; cep;;
        2) loading; covid;;
        02) loading; covid;;
        3) loading; gerador_cpf;;
        03) loading; gerador_cpf;;
        04) loading; new_script;;
        05) loading; _nmap;;
        06) loading; banner; bash update.sh;;
        07) loading; social_networks;;
        08) loading; version;;
        09) banner; exit 0;;
        q) banner; exit 0
    esac
done
