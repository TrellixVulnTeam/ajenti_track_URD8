��    �        �   
      �     �  "   �  b  �  (     #   :     ^     t  &   �     �     �     �  *   �     #     +  )   2     \  "   t     �     �  /   �     �            #   !  #   E  %   i      �     �     �     �     �  W        c  "   �     �  &   �  "   �          '     ?     X     q  !   �     �  '   �     �          %  !   8  %   Z  !   �     �  &   �  5   �  *     .   E  =   t     �  (   �  %   �  %     0   9     j     |  >   �  @   �            3   (  ,   \     �     �     �     �     �     �  '        4     I     b     y     �  +   �     �     �               1     A     V     i     z  	   �     �  %   �  /   �                ;     I  &   h     �  !   �     �     �     �  1   �  /   *     Z  !   g     �  ,   �  T   �     '  
   �      �     �     �     �     �     	          ;  4   V  $   �     �     �     �           '      D   *   [   :   �       �   )   �      !  #   )!  0   M!     ~!     �!  
   �!     �!     �!     �!     �!     �!  %   "     6"     S"     p"  &   �"     �"     �"     �"  4   �"     	#     #     #  �  #     �$  =   �$    �$  1   )  ;   9)  /   u)  4   �)  +   �)     *     $*     5*  6   Q*     �*     �*  2   �*     �*  '   �*     +     1+  ?   O+     �+     �+     �+  3   �+  3   ,  1   B,  )   t,     �,     �,     �,     �,  l   -  #   ~-  (   �-  (   �-  6   �-  .   +.  %   Z.  !   �.  $   �.  $   �.  (   �.  .   /  .   D/  .   s/     �/     �/     �/  4   �/  9   +0  8   e0  *   �0  <   �0  C   1  <   J1  /   �1  D   �1     �1  8   2  '   H2  '   p2  C   �2     �2  (   �2  O   $3  L   t3     �3     �3  W   �3  9   >4     x4  #   �4  #   �4  $   �4  !   5  &   #5  2   J5     }5      �5  #   �5  "   �5     �5  6   6  )   E6  +   o6     �6     �6     �6  "   �6     7     !7     67     H7     Q7  6   m7  ?   �7  -   �7  *   8     =8  0   N8  <   8  "   �8  &   �8  *   9     19     99  @   B9  <   �9     �9  #   �9  2   �9  6   #:  w   Z:  �   �:     �;  +   �;     �;     �;     �;     �;     <  3   <  #   N<  A   r<  1   �<  &   �<  "   =  '   0=  #   X=  (   |=  "   �=  6   �=  O   �=  ,   O>  J   |>  6   �>  6   �>  0   5?     f?     w?     �?     �?  "   �?     �?  %   �?      @  -   @  9   M@  ;   �@      �@  7   �@     A     A     2A  :   FA     �A     �A     �A     s             L   �   (   �   A      
   {       7   x   4   r   v       e       d   G       )             "          \          p   �          u                 J   c       ^   m                      P   B   o   q   $           N   �   X   �   �   t   !   W       S       `              �   }       =   0      2   f   T   :               �   9   _   6                 &       .      <   /      1   E       �   n       �       h       b           �          R   k   a           �           ~   �   8   *   l      �   I       ;   	       K   �   ?   |   �   3   g   �         Q   M   5      ,           Y   �                  �   O       F   Z   �       �   i   �   �   �   j   w           V   [   '          �       �   �                  �      ]          z   #   C               +       �   �   D   -   U              y   >       %          H   @   �   �    
 
Error applying application rules. 
Usage: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s enables the firewall
 %(disable)-31s disables the firewall
 %(default)-31s set default policy
 %(logging)-31s set logging to %(level)s
 %(allow)-31s add allow %(rule)s
 %(deny)-31s add deny %(rule)s
 %(reject)-31s add reject %(rule)s
 %(limit)-31s add limit %(rule)s
 %(delete)-31s delete %(urule)s
 %(insert)-31s insert %(urule)s at %(number)s
 %(reset)-31s reset firewall
 %(status)-31s show firewall status
 %(statusnum)-31s show firewall status as numbered list of %(rules)s
 %(statusverbose)-31s show verbose firewall status
 %(show)-31s show firewall report
 %(version)-31s display version information

%(appcommands)s:
 %(applist)-31s list application profiles
 %(appinfo)-31s show information on %(profile)s
 %(appupdate)-31s update %(profile)s
 %(appdefault)-31s set default application policy
  Attempted rules successfully unapplied.  Some rules could not be unapplied. %s is group writable! %s is world writable! '%(f)s' file '%(name)s' does not exist '%s' already exists. Aborting '%s' does not exist '%s' is not writable (be sure to update your rules accordingly) Aborted Action Adding IPv6 rule failed: IPv6 not enabled Available applications: Backing up '%(old)s' to '%(new)s'
 Bad destination address Bad interface name Bad interface name: can't use interface aliases Bad interface type Bad port Bad source address Cannot insert rule at position '%d' Cannot insert rule at position '%s' Cannot specify 'all' with '--add-new' Cannot specify insert and delete Checking raw ip6tables
 Checking raw iptables
 Checks disabled Command '%s' already exists Command may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Could not back out rule '%s' Could not delete non-existent rule Could not find '%s'. Aborting Could not find a profile matching '%s' Could not find executable for '%s' Could not find profile '%s' Could not find protocol Could not find rule '%d' Could not find rule '%s' Could not get listening status Could not get statistics for '%s' Could not load logging rules Could not normalize destination address Could not perform '%s' Could not set LOGLEVEL Couldn't find '%s' Couldn't find parent pid for '%s' Couldn't find pid (is /proc mounted?) Couldn't update application rules Couldn't update rules file Couldn't update rules file for logging Default %(direction)s policy changed to '%(policy)s'
 Default application policy changed to '%s' Default: %(in)s (incoming), %(out)s (outgoing) Deleting:
 %(rule)s
Proceed with operation (%(yes)s|%(no)s)?  Description: %s

 Duplicate profile '%s', using last found ERROR: this script should not be SGID ERROR: this script should not be SUID Firewall is active and enabled on system startup Firewall reloaded Found exact match Found multiple matches for '%s'. Please use exact profile name Found non-action/non-logtype match (%(xa)s/%(ya)s %(xl)s/%(yl)s) From Improper rule syntax Improper rule syntax ('%s' specified with app rule) Insert position '%s' is not a valid position Invalid '%s' clause Invalid 'from' clause Invalid 'port' clause Invalid 'proto' clause Invalid 'to' clause Invalid IP version '%s' Invalid IPv6 address with protocol '%s' Invalid command '%s' Invalid interface clause Invalid log level '%s' Invalid log type '%s' Invalid option Invalid policy '%(policy)s' for '%(chain)s' Invalid port with protocol '%s' Invalid ports in profile '%s' Invalid position ' Invalid position '%d' Invalid profile Invalid profile name Invalid token '%s' Logging disabled Logging enabled Logging:  Missing policy for '%s' Mixed IP versions for 'from' and 'to' Must specify 'tcp' or 'udp' with multiple ports Need 'from' or 'to' with '%s' Need 'to' or 'from' clause New profiles: No ports found in profile '%s' No rules found for application profile Option 'log' not allowed here Option 'log-all' not allowed here Port ranges must be numeric Port: Ports: Profile '%(fn)s' has empty required field '%(f)s' Profile '%(fn)s' missing required field '%(f)s' Profile: %s
 Profiles directory does not exist Protocol mismatch (from/to) Protocol mismatch with specified protocol %s Resetting all rules to installed defaults. Proceed with operation (%(yes)s|%(no)s)?  Resetting all rules to installed defaults. This may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Rule added Rule changed after normalization Rule deleted Rule inserted Rule updated Rules updated Rules updated (v6) Rules updated for profile '%s' Skipped reloading firewall Skipping '%(value)s': value too long for '%(field)s' Skipping '%s': also in /etc/services Skipping '%s': couldn't process Skipping '%s': couldn't stat Skipping '%s': field too long Skipping '%s': invalid name Skipping '%s': name too long Skipping '%s': too big Skipping '%s': too many files read already Skipping IPv6 application rule. Need at least iptables 1.4 Skipping inserting existing rule Skipping malformed tuple (bad length): %s Skipping malformed tuple: %s Skipping unsupported IPv6 '%s' rule Status: active
%(log)s
%(pol)s
%(app)s%(status)s Status: active%s Status: inactive Title: %s
 To Unknown policy '%s' Unsupported action '%s' Unsupported default policy Unsupported direction '%s' Unsupported policy for direction '%s' WARN: '%s' is world readable WARN: '%s' is world writable Wrong number of arguments You need to be root to run this script n problem running running ufw-init uid is %(uid)s but '%(path)s' is owned by %(st_uid)s unknown y yes Project-Id-Version: ufw
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2012-07-29 09:48-0500
PO-Revision-Date: 2012-07-01 10:31+0000
Last-Translator: Jose Luis Tirado <Unknown>
Language-Team: Spanish <es@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2012-08-12 01:56+0000
X-Generator: Launchpad (build 15780)
 
 
Se produjo un error al aplicar las reglas de la aplicación. 
Uso: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s activa el cortafuegos
 %(disable)-31s desactiva el cortafuegos
 %(default)-31s establece la política predeterminada
 %(logging)-31s establece el acceso a %(level)s
 %(allow)-31s añade %(rule)s de permiso
 %(deny)-31s añade %(rule)s denegación
 %(reject)-31s añade %(rule)s de rechazo
 %(limit)-31s añade %(rule)s de límite
 %(delete)-31s borra %(urule)s
 %(insert)-31s inserta %(urule)s en %(number)s
 %(reset)-31s restablece el cortafuegos
 %(status)-31s muestra el estado del cortafuegos
 %(statusnum)-31s muestra el estado del cortafuegos como una lista numerada de %(rules)s
 %(statusverbose)-31s muestra el estado del cortafuegos de manera detallada
 %(show)-31s muestra un informe del cortafuegos
 %(version)-31s muestra información de la versión

%(appcommands)s:
 %(applist)-31s lista perfiles de aplicación
 %(appinfo)-31s muestra información de %(profile)s
 %(appupdate)-31s actualiza %(profile)s
 %(appdefault)-31s establece la política determinada de aplicación
  Las reglas se han podido revertir correctamente.  Es posible que algunas reglas no se hayan podido revertir. ¡El grupo posee permiso de escritura sobre %s! ¡todo el mundo posee permiso de escritura sobre %s! «%(f)s» el archivo «%(name)s» no existe «%s» ya existe. Cancelando. «%s» no existe «%s» no se puede escribir (asegúrese de actualizar sus reglas consecuentemente) Interrumpido Acción Fallo al agregar la regla IPv6: IPv6 no habilitado Aplicaciones disponibles: Respaldando «%(old)s» en «%(new)s»
 Dirección de destino errónea Nombre de interfaz incorrecto Nombre de interfaz erróneo: no se puede usar alias de interfaz Tipo de interfaz incorrecto Puerto erróneo Dirección de orígen errónea No se pudo insertar la regla en la posición «%d» No se pudo insertar la regla en la posición «%s» No se puede especificar «all» con «--add-new» No se puede especificar insertar y borrar Comprobando ip6tables en bruto
 Comprobando iptables en bruto
 Verificación desactivada La orden «%s» ya existe El comando puede interrumpir las conexiones ssh existentes. ¿Continuar con la operación (%(yes)s|%(no)s)?  No se pudo revertir la regla «%s» No se puede borrar una regla inexistente No se pudo encontrar «%s». Cancelando. No se pudo encontrar un perfil que coincida con «%s» No se pudo encontrar el ejecutable para «%s» No se pudo encontrar el perfil «%s» No se pudo encontrar el protocolo No se pudo encontrar la regla «%d» No se pudo encontrar la regla «%s» No se pudo obtener el estado de escuchas No se pudieron obtener estadísticas de «%s» No se han podido cargar las reglas de registro No se pudo normalizar la dirección de destino No se puede hacer «%s» No se pudo establecer LOGLEVEL No se pudo encontrar «%s» No se ha podido encontrar el PID del padre de «%s» No se ha podido encontrar el PID (¿está montado /proc?) No se han podido actualizar las reglas de la aplicación No se pudo actualizar el archivo de reglas No se puede actualizar el archivo de reglas para el registro La política %(direction)s predeterminada cambió a «%(policy)s»
 Directivas de aplicación predeterminadas cambiadas a «%s» Por defecto: %(in)s (Entrada), %(out)s (Salida) Borrando:
 %(rule)s
¿Continuar con la operación (%(yes)s|%(no)s)?  Descripción: %s

 Perfil «%s» duplicado; se usará el último encontrado ERROR: este guión no debería ser SGID ERROR: este guión no debería ser SUID El cortafuegos está activo y habilitado en el arranque del sistema El cortafuegos se ha recargado Se ha encontrado una coincidencia exacta Se encontraron varias coincidencias para «%s». Use un nombre de perfil exacto Coincidencia encontrada non-action/non-logtype (%(xa)s/%(ya)s %(xl)s/%(yl)s) Desde Error de sintáxis en la regla Sintaxis inapropiada para la regla (se especificó «%s» con una regla de aplicación) La posición «%s» insertada no es una posición válida Cláusula «%s» no válida La cláusula «from» es incorrecta La cláusula «port» es incorrecta La cláusula «proto» es incorrecta La cláusula «to» es incorrecta La versión de IP «%s» no es válida Dirección IPv6 incorrecta con el protocolo «%s» Orden inválida «%s» Cláusula de interfaz incorrecta Nivel de registro «%s» incorrecto Tipo de registro «%s» incorrecto Opción no valida Política «%(policy)s» incorrecta para «%(chain)s» Puerto incorrecto con el protocolo «%s» Hay puertos incorrectos en el perfil «%s» Posición ' incorrecta Posición «%d» incorrecta Perfil incorrecto El nombre del perfil es incorrecto El token «%s» es incorrecto Registro desactivado Registro activado Acceso:  Falta política para «%s» Las versiones IP de «from» y «to» están mezcladas Se debe especificar «tcp» o «udp» al indicar varios puertos Se necesita usar «from» o «to» con «%s» Se necesita la cláusula «to» o «from» Perfiles nuevos: No se han encontrado puertos en el perfil «%s» No se han encontrado reglas para el perfil de la aplicación Opción «log» no permitida aquí Opción «log-all» no permitida aquí Los rangos de puertos deben ser numéricos Puerto: Puertos: El perfil «%(fn)s» tiene vacío el campo obligatorio «%(f)s» En el perfil «%(fn)s» falta el campo obligatorio «%(f)s» Perfil: %s
 No existe el directorio de perfiles Discordancia en el uso de los argumentos (from/to) El protocolo no concuerda con el especificado («%s») Reiniciando todas las reglas a sus valores predeterminados instalados. ¿Continuar con la operación (%(yes)s|%(no)s)?  Reiniciando todas las reglas a sus valores predeterminados instalados. Esto puede interrumpir las conexiones ssh existentes. ¿Continuar con la operación (%(yes)s|%(no)s)?  Regla agregada Se cambió una regla tras la normalización Regla eliminada Regla insertada Regla actualizada Reglas actualizadas Reglas actualizadas (v6) Se han actualizado las reglas para el perfil «%s» Se omite la recarga del cortafuegos Omitiendo «%(value)s»: valor demasiado largo para «%(field)s» Omitiendo «%s»: está también en /etc/services Omitiendo «%s»: no se puede procesar Omitiendo «%s»: no se puede leer Omitiendo «%s»: campo demasiado largo Omitiendo «%s»: nombre incorrecto Omitiendo «%s»: nombre demasiado largo Omitiendo «%s»: demasiado grande Omitiendo «%s»: ya se han leído demasiados archivos Omitiendo las reglas de aplicación IPv6. Se necesita iptables 1.4 como mínimo Saltando la inserción de regla ya existente Omitiendo regla errónea (longitud errónea): %s. Verifique su cortafuegos Omitiendo línea erróna: %s. Verifique su cortafuegos Omitiendo la regla IPv6 '%s' porque no está soportada Estado: activo
%(log)s
%(pol)s
%(app)s%(status)s Estado: activo%s Estado: inactivo Título: %s
 Hasta La política «%s» es desconocida Acción «%s» no soportada Política predeterminada no permitida Dirección «%s» no permitida Politica para dirección «%s»  no permitida AVISO: «%s» tiene permiso de lectura para todo el mundo AVISO: «%s» tiene permiso de escritura para todo el mundo Número incorrecto de argumentos Debe ser root (administrador) para ejecutar este guión n problema ejecutando ejecutando ufw-init el uid es %(uid)s pero «%(path)s» pertenece a %(st_uid)s desconocido s sí 