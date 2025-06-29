cd engine\build
make -f windows.mk debug
cd ..\..

cd demo\build
make -f windows.mk debug
make -f windows.mk run
cd ..\..
