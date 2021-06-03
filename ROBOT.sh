#!/bin/bash

source /SHELL/config.cfg

echo -e ""$vermelho"\nVAMOS ATACAR \n"$amarelo"VOCÊ QUER O QUE?"$branco""

sleep 2

while true; do
	echo; read -p "FALA LOGO: " ACTION ; echo

	case $ACTION in
		*"ping"*|*"conectividade"*)
			DADOS="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${SITES[$DADOS]}"
		;;
		*"nmap"*|*"portas"*|*"mapear"*)
			DADOS="$(( $RANDOM % 10 ))"
			nmap -sS "${SITES[$DADOS]}"
		;;
	esac
done
