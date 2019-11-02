# .zshrc
# Un perfil de zsh con un funciones en castellano para usuarios de Mac OS
#
# NOTA IMPORTANTE: El archivo configure debe lanzarse desde su mismo directorio.
# .zshrc contiene tres funciones: leer, buscar, y borrar
#
#
# leer recoge sólo su primer argumento y abre un terminal aparte con la página de man correspondiente a tal argumento. La  
# consulta se vuelve más cómoda visualmente y el terminal se cierra al pulsar 'q'. Por ejemplo:
#
# 'leer ifconfig' abre un terminal con la página 'man ifcongfig'
#
#
# buscar utiliza el programa tree, así que de una manera o de otra debes asegurarte de que tree esté disponible en tu
# en tu variable PATH. La solución más suave que se me ha ocurrido es incluir el directorio de configure en tu misma variable
# PATH y por ello es IMPORTANTE que lances ./configure desde su mismo directorio. Ahora bien, si esto no funciona o prefieres
# hacerlo de otra manera puedes hacer un 'sudo cp tree /usr/bin'.

# 'buscar ifconfig' buscar las coincidicencias con 'ifconfig' en todo árbol de directorios subsudiario de aquel en que se
# lance.
# buscar $HOME/foto.jpg buscará el archivo foto.jpg en todo tu árbol de directorios HOME.
# Esta función sólo admite un argumento.
#
#
# 'borrar' borrará tanto un archivo como todo un árbol de directorios. Admite sólo un argumento. Por ejemplo:
#
# 'borrar #HOME/MisDocs' borrará esa entrada de directorio, tanto si se refiere a un directorio como a un archivo. Si es un
# directorio, se te pedirá confirmación para eliminar todo su árbol subsidiario.
