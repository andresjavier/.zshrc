leer() {
	echo $1>$HOME/.lectura
	osascript -e 'tell app "Terminal"
    	do script "zsh .leer"
	end tell'
}
buscar() {
	 if [ $# = 1 ]; then
	    tree -afi | grep $1;
	 else
	    tree -afi $1 | grep $2;
	 fi
}
borrar(){
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

alias ll='ls -al' 


