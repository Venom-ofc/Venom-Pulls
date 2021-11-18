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

function access()
{
    [[ -f .sl ]] && return 0
    for ((times=0;times<=2;times++)); do
        banner
        printf "
 ${green}Nome de usuário
 ${blue}===> ${cyan}"
        sleep 0.5
        read_alpha
        ret="$?"
        [[ ${ret} -eq 11 ]] && return 11

        if [[ ${ret} -eq 0 ]]; then
            if [[ ${inputuse} == Hater ]]; then
                printf " Okay...$end\n"
                sleep 1
                break

            elif [[ ${inputuse} == q ]]; then
                printf " ${blue}Saindo... ${end}"
                sleep 1
                return 1

            else
                printf " ${red}\aUsuário incorreto\a\n"
                [[ ${times} -lt 2 ]] && printf " Digite Q para sair\n"
                [[ ${times} -eq 2 ]] && return 1
                sleep 1

            fi
        else
            [[ ${times} -eq 2 ]] &&  return 1
        fi
    done

    for ((times=0;times<=2;times++)); do
        banner
        printf "
 ${green}Senha de usuário
 ${blue}===> ${cyan}"
        sleep 0.5
        read_alpha
        ret="$?"
        [[ ${ret} -eq 11 ]] && return 11

        if [[ ${ret} -eq 0 ]]; then
            if [[ ${inputuse} == KoRn ]]; then
                printf " Okay...$end\n"
                sleep 1
                > .sl
                return 0

            elif [[ ${inputuse} == q ]]; then
                printf " ${blue}Saindo... ${end}"
                sleep 1
                return 1

            else
                printf " ${red}\aSenha incorreta\a\n"
                [[ ${times} -lt 2 ]] && printf " Digite Q para sair\n"
                [[ ${times} -eq 2 ]] && return 1
                sleep 1
            fi
        else
            [[ ${times} -eq 2 ]] && return 1
        fi
    done
}
function banner()
{
    clear
    sleep 0.0000000001
    printf " ${yellow}
 .--------.____________
 || ° Venom Pulls.2021.|| ${green}® github.com/Venom-ofc${yellow}"
    sleep 0.0000000001
    printf "
 || °Pequeno Painel By.|| ${green}© Wa.me/37122291651${yellow}"
    sleep 0.0000000001
    printf "
 ||\     ______________________"
    sleep 0.0000000001
    printf "
 || \   // ° ° ° ° ° ° ° ° ° ° ° ° ° ° ° °/"
    sleep 0.0000000001
    printf "
 ||\ \ //     ©YouTube: Venom Mods       /"
    sleep 0.0000000001
    printf "
 || \ //     ©Um pequeno painel         /"
    sleep 0.0000000001
    printf "
 ||\ //     ©mais puxadas em breve     /"
    sleep 0.0000000001
    printf "
 || //     ©Inscreva-se no canal      /"
    sleep 0.0000000001
    printf "
 ||//     ©YouTube: Venom Mods       /"
    sleep 0.0000000001
    printf "
 ||/  ©Github: github.com/Venom-ofc /"
    sleep 0.0000000001
    printf "
 |/________________________________/"
    sleep 0.0000000001
    printf "
 ${red}||======================================||${end}\n"
    sleep 0.0000000001
    printf "
  ${red}<••🔮Arquivo Venom Pulls🔮••>${end}\n"
    sleep 0.0000000001
    printf "
   ${pink}<<🔮 PAINEL VENOM PULLS ${date_c} 🔮>>"
    sleep 0.0000000001
    printf "
 ${green}||=====================================||\n"
    sleep 0.0000000001
}
function banner_menu()
{
    printf "\n"
    sleep 0.000000000001
    printf " ${a1}${a2}01${a3} ${cyan}Consulta de CEP      ${a3}${on}\n"
    sleep 0.000000000001
    printf " ${a1}${a2}02${a3} ${cyan}Consulta de Covid19  ${a3}${on}\n"
    sleep 0.000000000001
    printf " ${a1}${a2}03${a3} ${cyan}Gerador de CPF       ${a3}${on}\n"
    sleep 0.000000000001
    printf " ${a1}${a2}04${a3} ${cyan}Criar script         ${a3}${on}\n"
    sleep 0.000000000001
    printf " ${a1}${a2}05${a3} ${cyan}Snaear portas        ${a3}${on}\n"
    sleep 0.000000000001
    printf "\n ${a1}${red}06${a3} ${cyan}Atualizar painel Venom Pulls   ${a3}${on}\n"
    sleep 0.000000000001
    printf " ${a1}${red}07${a3} ${cyan}contatos do criador     ${a3}${on}\n"
    sleep 0.000000000001
    printf " ${a1}${red}08${a3} ${cyan}Informacões do painel       ${a3}${on}\n"
    printf " ${a1}${red}09${a3} ${cyan}Sai do painel     ${a3}${on}\n"
    sleep 0.000000000001
    printf "\n ${blue}｠✦҈͜͡➳➳➳ ${cyan}"
}
function cep()
{
    while :; do
        clear
        banner
        printf "\n ${blue}Informe o cep para a consulta\n ===> ${cyan}"
        read_num
        ret="$?"
        [[ ${ret} -eq 11 ]] && return 11

        if [[ ${ret} -eq 0 ]]; then
            wget https://viacep.com.br/ws/${inputuse}/json/ -O cep.txt &> /dev/null
            [[ $? -eq 4 ]] && printf "${netwget}" && sleep 1 && return 4
            sed 's/"//g;s/{//;s/}//;s/,//g' cep.txt
            rm -rf cep.txt
            return_menu
            [[ $? -eq 1 ]] && return 0
        fi
    done
}
function covid()
{
    while :; do
        banner
        printf "\n ${blue}Informe Uf para a consulta\n ===> ${cyan}"
        read_alpha
        ret="$?"
        [[ ${ret} -eq 11 ]] && return 11

        if [[ ${ret} -eq 0 ]]; then
            wget https://covid19-brazil-api.now.sh/api/report/v1/brazil/uf/${inputuse} -O covid.txt &> /dev/null
            [[ $? -eq 4 ]] && printf "${netwget}" && sleep 1 && return 4
            echo ""
            sleep 0.1
            printf " UF: "
            sed 's/,/\n\n/g' covid.txt | grep 'uf' | sed 's/"uf"://' | sed 's/"//g'
            sleep 0.1
            printf " Estado: "
            sed 's/,/\n\n/g' covid.txt | grep 'state' | sed 's/"state"://' | sed 's/"//g'
            sleep  0.1
            printf " UID: "
            sed 's/,/\n\n/g' covid.txt | grep 'uid' | sed 's/{"uid"://' | sed 's/"//g'
            sleep 0.1
            printf " Casos: "
            sed 's/,/\n\n/g' covid.txt | grep 'cases' | sed 's/"cases"://' | sed 's/"//g'
            sleep 0.1
            printf " Mortes: "
            sed 's/,/\n\n/g' covid.txt | grep 'deaths' | sed 's/"deaths"://' | sed 's/"//g'
            sleep 0.1
            printf " Suspeitos: "
            sed 's/,/\n\n/g' covid.txt | grep 'suspects' | sed 's/"suspects"://' | sed 's/"//g'
            sleep 0.1
            printf " Recusa: "
            sed 's/,/\n\n/g' covid.txt | grep 'refuses' | sed 's/"refuses"://' | sed 's/"//g'
            rm -rf covid.txt
            return_menu
            [[ $? -eq 1 ]] && return 0

        fi
    done
}
function downloads()
{
    if [[ -d /data/data/com.termux/files/home/ ]]; then
        path_painel=`pwd`
        path_painel_bin="/data/data/com.termux/files/usr/etc/profile"
        pkg="pkg"

        if [[ -f /data/data/com.termux/files/usr/etc/.okay ]]; then
            clear

        else
            echo "PATH=${PATH}:${path_painel}" >> ${path_painel_bin}
        fi

    else
        pkg="sudo apt-get"
    fi

    if [[ -f /data/data/com.termux/files/usr/etc/.okay ]]; then
        clear

    else
        banner
        echo -e "${end}"
        echo -e " ${green}$ ${blue}installation of packages ${end}"
        #echo -e " ${green}$ ${blue}instalando Python... ${end}"
        #${pkg} install -y python &> /dev/null
        #echo -e " ${green}$ ${blue}instalando Python2... ${end}"
        #${pkg} install -y python2 &> /dev/null
        #echo -e " ${green}$ ${blue}instalando Python3... ${end}"
        #${pkg} install -y python3 &> /dev/null
        #echo -e " ${green}$ ${blue}instalando PHP... ${end}"
        #${pkg} install -y php &> /dev/null
        echo -e " ${green}$ ${blue}installing Wget... ${end}"
        ${pkg} install -y wget &> /dev/null
        echo -e " ${green}$ ${blue}installing Sed... ${end}"
        ${pkg} install -y sed &> /dev/null
        echo -e " ${green}$ ${blue}installing Nmap... ${end}"
        ${pkg} install -y nmap &> /dev/null
        #echo -e " ${green}$ ${blue}instalando Mpg123... ${end}"
        #${pkg} install -y mpg123 &> /dev/null
        [[ ${pkg} == pkg ]] && > /data/data/com.termux/files/usr/etc/.okay
        [[ ${pkg} == pkg ]] || > .okay
    fi
}
function gerador_cpf()
{
    while :; do
    soma=0
        for i in {11..2}; do
            numero=$(($RANDOM%9))
            cpf=${cpf}${numero}
            soma=$((${soma}+(${numero}*${i})))
        done

        resto=$((${soma}%11))
        [[ ${resto} -lt 2 ]] && digito=0 || digito=$((11-${resto}))
        cpf=${cpf}${digito}
        soma=0

        for i in {11..2}; do
            indice=$(((${i}-11)*-1))
            soma=$((${soma}+(${cpf:$indice:1}*${i})))1
        done

        resto=$((${soma}%11))
        [[ ${resto} -lt 2 ]] && digito1=0 || digito1=$((11-${resto}))
        cpf=${cpf}${digito1}
        clear
        banner
        printf "\n ${blue}CPF GAREDO: ${cyan}${cpf} ${end}\n"
        cpf=${nome}
        return_menu
        [[ $? -eq 1 ]] && return 0
    done
}
function loading()
{
    printf "${blue} Carregando"
    sleep 0.1
    printf "${cyan}..."
    sleep 0.1
    printf "\b\b\b.. "
    sleep 0.1
    printf "\b\b.  "
    sleep 0.1
    printf "..."
    sleep 0.1
    printf "\b\b\b.. "
    sleep 0.1
    printf "\b\b.  "
    sleep 0.1
    printf "..."
    sleep 0.1
    printf "\b\b\b.. "
    sleep 0.1
    printf "\b\b.  "
    sleep 0.1
    printf "..."
    sleep 0.1
    printf "\b\b\b.. "
    sleep 0.1
    printf "\b\b.  "
    sleep 0.1
}
function new_script()
{
    banner
    printf "${blue}\n Name for the script: ${cyan}"
    read_empty
    ret="$?"
    [[ ${ret} -eq 11 ]] && return 11

    if [[ ${ret} -eq 0 ]]; then
        [[ -f ${inputuse} ]] && printf "${red} The name already exists" && sleep 1 && return 0 || > ${inputuse}
        script="${inputuse}"
        chmod u+x ${script}
        nano ${script}
    fi
}
function _nmap()
{
    while :; do
        banner
        printf "\n\e[34m Ex.: google.com ou youtu.be\n Host: \e[36m"
        read_empty
        ret="$?"
        [[ ${ret} -eq 11 ]] && return 11

        if [[ ${ret} -eq 0 ]]; then
            echo ""
            nmap ${inputuse} | grep 'open'
            return_menu
            [[ $? -eq 1 ]] && return 0
        fi
    done
}
function read_alpha()
{
    read -t 45 inputuse

    if [[ -n ${inputuse} ]]; then
        [[ ${inputuse} == q ]] && return 11

         if [[ ${inputuse} =~ ^([A-Za-z]+)$ ]]; then
             return 0

         else
             printf " ${yellow}Apenas letras!\n${end}"
             sleep 1
             return 1
         fi
    else
        printf " ${yellow}Nada digitado!\n${end}"
        sleep 1
        return 1
    fi
}
function read_alphanum()
{
    echo nomw
}
function read_empty()
{
    read -t 45 inputuse
    [[ -z ${inputuse} ]] && printf " ${yellow}Nada digitado!\n${end}" && sleep 1 && return 1
    [[ ${inputuse} == q ]] && return 11
    return 0
}
function read_num()
{
    read -t 45 inputuse

    if [[ -n ${inputuse} ]]; then
        [[ ${inputuse} == q ]] && return 11

        if [[ ${inputuse} == ?(+|-)+([0-9]) ]] ; then
            return 0

        else
            printf " ${yellow}Apenas numeros!\n${end}"
            sleep 1
            return 1
        fi

    else
        printf " ${yellow}Nada digitado!\n${end}"
        sleep 1
        return 1
    fi
}
function read_special()
{
    echo nome
}
function return_menu()
{
    printf "${b}
 ${blue}Continue ou retorne ao menu principal

 ${a1}${a2}01${a3} ${cyan}Continuar      ${a3}${on}
 ${a1}${a2}02${a3} ${cyan}Volta ao Menu ${a3}${on}

 ${blue}｠✦҈͜͡➳➳➳ ${cyan}"
    read inputuse

    case ${inputuse} in
        01) return 0;;
        1) return 0;;
        02) return 1;;
        2) return 1;;
        q) return 1
    esac
}
function social_networks()
{
    clear
    termux-open-url https://wa.me/37122291651 &> /dev/null
    sleep 1
    termux-open-url https://chat.whatsapp.com/CtDb7WeHICiI8iO4BZeZMO &> /dev/null
    sleep 2
    banner
    printf "\n${blue} Ctt do Whatsapp: ${cyan}https://wa.me/37122291651\n"
    printf "${blue} Github: ${cyan}https://github.com/Venom-ofc\n"
    printf "${blue} Grupo do Whatsapp: ${cyan}https://chat.whatsapp.com/CtDb7WeHICiI8iO4BZeZMO\n"
    printf "${blue} YouTube : ${cyan}https://youtube.com/channel/UCOoc5DOT_M6foZa1jSOI6JQ\n"
    printf "\n Der enter para sair${end}"
    read
}
function version()
{
   banner
   printf "${cyan}
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

 der enter para sair"
    read
}
