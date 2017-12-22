#!/bin/bash

function Latex(){
# Instalar distribuição tex, normas abnt, texstudio e corretor ortografico respectivamente
	sudo apt-get install --yes texlive-full abntex texstudio aspell
}


instalar=$(zenity --list --checklist --column "instalar" --column "Programas" FALSE Latex)
IFS="|"
programas="$instalar"
for p in $programas; do
	$p #executa função
done
