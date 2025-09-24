@echo off
cls

:: Obtener el nombre del archivo sin extensión
set "projectName=%~n0"

:: Crear carpeta con el nombre del archivo
mkdir "%projectName%"
cd "%projectName%"

:: Crear subcarpetas
mkdir notebooks src

:: Crear entorno virtual
py -m venv .venv

:: Crear estructura MVC dentro de src
cd src
mkdir model view controller

:: Activar entorno virtual
cd..
cd .venv\Scripts
call activate

:: Actualizar python
cd..
cd..
py -m pip install --upgrade pip

::Entrar entorno de programacion vsc
code .