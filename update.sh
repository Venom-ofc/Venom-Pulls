#!/usr/bin/env bash

<<Venom
 ##ঔৣ͜͡➳ VENOM PULLS
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

cd ..; rm -rf Venom-Pulls
printf "\n\e[1;33m Atualizando Painel Venom Pulls...\e[m"
git clone https://github.com/Venom-ofc/Venom-Pulls &> /dev/null
cd Venom-Pulls
chmod +x *
./Venompulls.sh
