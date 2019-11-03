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
	if [ $1 = '-x' ]; then
		2>/dev/null ls -1aR | sed -n "/$2/p"
	else {
	TEMP=$IFS
	IFS=':'
	if [ -e "./$1" ]; then echo $PWD/$1; fi
	A=(`2>/dev/null ls -aR $PWD | sed  -n '/:/p;' | tr -d '\n'`)
	for D in $A; do	
		C="$D/$1"
		if [ -e $C ]; then echo $C; fi
	done
	IFS=$TEMP }
	fi	
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