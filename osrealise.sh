#!/usr/bin/env bash

echo "_________________________"
echo ""
echo "Informações Sistema Atual"
echo "_________________________"
echo ""
echo "Usuário Atual: " $USER
echo "Diretório Atual: " $PWD
echo "Sessão Atual: " $DESKTOP_SESSION
echo "Diretório Principal: " $HOME
echo "Terminal: " $SHELL
echo "Versão Atual: " $BASH_VERSION
echo "Idioma Configuração: " $LANG
echo "Arquivos Configuração: " $XDG_CONFIG_HOME
echo ""
echo "________________________________"
echo ""
echo "Informações Sistema com Neofetch"
echo "________________________________"


SEARCH=$(apt search [ --installed ] | grep [ -i ] "neofetch")

if [[ ${SEARCH} != "neofetch"  ]];
then
	echo "Neofetch Instalado."
	read -p "Tecle Enter para Exibir Informações Gráficas?"
	sleep 1
	neofetch
else
	read -p "Deseja Instalar o Neofetch? Tecle Enter!"
	sleep 1
	apt search neofetch >> search.txt
	sudo apt install neofetch

	if [[ "neofetch"  ]];
	then
		echo "Instalado com Sucesso..."
	else
		echo "Ocorreu Erro na Instalação! Tente Novamente..."
	fi
fi
