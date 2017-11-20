echo off
cls
:menu
cls
echo ________________________
echo Bem Vindo Ao HotSpot 1.0
echo         GitHub: oTrolado
echo ________________________
echo 1 - Iniciar rede generica
echo 2 - Configurar A rede
echo 3 - Estatus da rede
echo 4 - Reiniciar A rede
set /p choice=Escolha uma opcao: 

if '%choice%' == '1' goto :choice1
if '%choice%' == '2' goto :choice2
if '%choice%' == '3' goto :choice3

goto start
:choice1
cls
echo Configurando interface
netsh wlan set hostednetwork mode=allow ssid=XadaoFrot key=abacaxis
netsh wlan start hostednetwork
echo Rede Iniciada
set /p pausa=Precione entender para continuar
goto :menu

:choice2
cls
set /p bssid=Digite o nome da rede: 
set /p psk=Digite a senha(8 caracteres): 
echo Configurando interface
netsh wlan set hostednetwork mode=allow ssid=%bssid% key=%psk%
netsh wlan start hostednetwork
echo Rede Iniciada
set /p pausa=Precione entender para continuar
goto :menu

:choice3
cls
echo Dados da Rede
netsh wlan show hostednetwork
set /p pausa=Precione entender para continuar
goto :menu

:choice4
cls
echo Reiniciando A Rede
netsh wlan stop hostednetwork
netsh wlan start hostednetwork
echo Pronto!
set /p pausa=Precione entender para continuar
goto :menu

pause