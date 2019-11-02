.zshrc
 Un perfil de zsh con un funciones en castellano para usuarios de Mac OS

NOTA IMPORTANTE: El archivo configure debe lanzarse desde su mismo directorio.
.zshrc contiene cuatro funciones: leer, busca, borra y explora

#### leer

leer recoge sólo su primer argumento y abre un terminal aparte con la página de man correspondiente a tal argumento. La  consulta se vuelve más cómoda visualmente y el terminal se cierra al pulsar 'q'. Por ejemplo:

# leer ifconfig

abre un terminal con la página 'man ifcongfig'

#### busca

La función busca. Se han hecho cambios profundos en esta función, para eliminar la necesidad de tener instalado tree. La función acepta un argumento. Recorrerá todo el árbol de directorio subsidiario de aquél en que se lance, devolviendo la ruta completa de las coincidencias tanto de direcotrio, como de fichero, como de enlace simbólico con el argumento proporcionado. Las coincidencias deben ser exactas y un gran adelanto sería permitir las expresiones regulares para la búqueda.

Por ejmplo: 

# busca X

buscará las coincidicencias con 'X' en todo árbol de directorios subsudiario de aquel en que se lance. Si X es un directorio se mostrará tan sólo la ruta de tal directorio, sin profundizar en los subsidiarios del mismo; si X es un archivo se mostrarán todas las coincidencias, al igual que si es un enlance simbólico.

# cd
# busca foto.jpg 

buscará el archivo foto.jpg en todo tu árbol de directorios HOME.

# NOTA:

Aunque las rutas de las coincidencias se muestren absolutas, las que se pueden indicar en el argumento sólo pueden ser subsidiarias del directorio en el que la función se ejecute.

#### borra

'borra' borrará tanto un archivo como todo un árbol de directorios. Admite sólo un argumento. Por ejemplo:

# borra #HOME/MisDocs' 

borrará esa entrada de directorio, tanto si se refiere a un directorio como a un archivo. Si es un directorio, se te pedirá confirmación para eliminar todo su árbol subsidiario.

#### explora

explora admite cero o un argumento. En el primer caso, devuelve todo el árbol de directorios subsidiario de aquél en que se # lance. En el segundo, devolverá, si exise, el árbol subsidiario del directorio que coincida con el argumento.

Por ejemplo:

# cd /
# explora

devolverá todo el árbol de directorios del sistema.

# explora /usr/share

devolverá todo el árbol de /usr/share

