#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/NetApp/trident/releases/download

# https://github.com/NetApp/trident/releases/download/v21.04.0/trident-installer-21.04.0.tar.gz

dl_ver()
{
    local ver=$1
    local file=trident-installer-${ver}.tar.gz
    local url=$MIRROR/v${ver}/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver $(sha256sum $lfile | awk '{print $1}')
}

dl_ver ${1:-23.01.1}
