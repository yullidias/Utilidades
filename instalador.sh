#!/bin/bash

function Latex(){
# Instalar distribuição tex, normas abnt, texstudio e corretor ortografico respectivamente
	sudo apt-get install --yes texlive-full abntex texstudio aspell
}

function VirtualBoxAMD64(){
	wget https://download.virtualbox.org/virtualbox/5.2.8/virtualbox-5.2_5.2.8-121009~Debian~jessie_amd64.deb
	sudo dpkg -i virtualbox*.deb
	sudo apt-get install linux-headers-amd64 linux-headers-3.16.0-4-amd64
	sudo /sbin/vboxconfig
}

instalar=$(zenity --list --checklist --column "instalar" --column "Programas" FALSE Latex FALSE VirtualBoxAMD64
)
IFS="|"
programas="$instalar"
for p in $programas; do
	$p #executa função
done
