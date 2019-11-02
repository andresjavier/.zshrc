export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbinl
export CLICOLOR=1
export LSCOLORS=cxafdxexdxgxhxAxBxCxDx

leer() {
	echo $1>$HOME/.lectura
	osascript -e 'tell app "Terminal"
    	do script "zsh .leer"
	end tell'
}
explora(){
	if [ ! $# ]; then
		DIR=$PWD
	else DIR=$1
	fi
	 ls -R $DIR | sed  -n '/:/p; /permitted/d;' | tr -d '.:'
}
busca(){
	TEMP=$IFS
	IFS=':'
	X=$PWD'/'$1
	if [ -e $X ]; then echo $X; fi
	A=(`2>/dev/null ls -aR $PWD | sed  -n '/:/p' | tr -d '\n'`)
	for D in $A; do
		C=$D'/'$1
		if [ -d $C ]; 
			then echo 'Directorio:\n'$C'/';
		elif [ -f $C ]; 
			then  echo $C;
		elif [ -L $C ]; then echo 'Enlace simbólico:\n'$C;
		fi
	done
	IFS=$TEMP
}
borra(){
	if [ -d $1 ]; then {
	   echo $1" es un directorio."
	   echo "¿Seguro que quiere borrarlo (Y/*)?"
	   read CONFIRMACION
	   if [ $CONFIRMACION = 'Y' -o $CONFIRMACION = 'y' ];  then
	   	rm -dR $1;
	   else 
		echo "Operación cancelada";
	   fi
	}
	else
	   rm $1
	fi
}

alias ll='ls -Gal' 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
