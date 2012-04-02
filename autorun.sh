#!/bin/sh

FIREFOXCMD=`command -v /usr/bin/firefox || command -v /usr/bin/firefox`
DEFAULTCMD=`command -v xdg-open || command -v sensible-browser`

FILE="CLIQUE_AQUI_PARA_INICIAR.html"
PATH=`dirname $0`

SYSINF=`/usr/bin/lsb_release --id -s`
SYSVER=`/usr/bin/lsb_release -r -s`

if test $SYSINF = "Linux Educacional"
then
    if test $SYSVER = "4.0"
    then
        /usr/bin/kde-open $PATH/$FILE
    fi
else
    if test $SYSINF = "Ubuntu"
        then
            exec $FIREFOXCMD $PATH/$FILE
    fi
fi

