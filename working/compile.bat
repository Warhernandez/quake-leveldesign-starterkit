@echo off

cd\
cd D:\QuakeDev\working


echo Copying Files...
copy D:\QuakeDev\id1\maps\PlingusManor.map D:\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
D:\QuakeDev\tools\ericw-tools\bin\qbsp.exe PlingusManor

echo --------------VIS---------------
D:\QuakeDev\tools\ericw-tools\bin\vis.exe PlingusManor

copy PlingusManor.bsp D:\QuakeDev\id1\maps
copy PlingusManor.pts D:\QuakeDev\id1\maps
copy PlingusManor.lit D:\QuakeDev\id1\maps
pause
cd\
cd D:\QuakeDev
quakespasm-spiked-win64  +map PlingusManor
