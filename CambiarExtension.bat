@echo off
mode 100, 30
title ExtRen
:inicio
cls
echo 	-------------------------------------------
echo 	-   Selecciones la opcion que necesita    -
echo 	-                                         -
echo 	-   1.-Quitar extension extra             -
echo 	-   2.-Renombrar extensiones por lotes    -
echo 	-   3.-Agregar extension		  -
echo 	-   4.-salir				  -
echo 	-                                         -
echo 	-                                         -
echo 	-	By Ing. Jose Carlos Robles A.	  -
echo 	-     Contacto: profe.jcarlos@gmail.com   -
echo 	-------------------------------------------

set/p pregunta= Escribe la opcion: 

if %pregunta%==1 goto quitar else goto pregunta2 
:pregunta2
if %pregunta%==2 goto renombrar else goto pregunta3
:pregunta3
if %pregunta%==3 goto agregar else goto pregunta4
:pregunta4
if %pregunta%==4 goto salir
if %pregunta% GTR 4 goto error

:error
echo Error de seleccion
pause
goto inicio

:quitar
echo %pregunta%

set/p extension= Escribe la extension que desea quitar:
echo Espere a que termine el proceso
echo.
ren *.*.%extension% *.>nul
echo proceso terminado
pause
goto inicio

:renombrar
set/p pregunta_donde= Escriba la extension a cambiar:
set/p pregunta_cual= Escribe por cual extension desea cambiar:
echo procesando...
ren *.%pregunta_donde% *.%pregunta_cual%
echo Proceso terminado
pause
goto inicio

:agregar
set/p pregunta_agregar= A que extension desea agregar?:
set/p pregunta_extension= Que tipo de extension desea agregar?:
echo procesando...
ren *.%pregunta_agregar% *.%pregunta_agregar%.%pregunta_extension%
echo Proceso terminado
pause
goto inicio

:salir
echo By Ing. Jose Carlos Robles A.
pause