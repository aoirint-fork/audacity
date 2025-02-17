#!/usr/bin/env bash

export TZ=Europe/London
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

build_deps=(
   build-essential 
   fakeroot 
   devscripts
   gcc
   g++
   git
   python3
   python3-setuptools
   python3-venv
   python3-wheel
   python3-pip
   python3-dev
   wget
   cmake
)

deps=(
   libgtk2.0-dev
   libasound2-dev
   libavformat-dev
   libjack-jackd2-dev
   zlib1g-dev
   libexpat1-dev
   libmp3lame-dev
   libsndfile-dev
   libsoxr-dev
   portaudio19-dev
   libsqlite3-dev
   libavcodec-dev
   libavformat-dev
   libavutil-dev
   libid3tag0-dev
   libmad0-dev
   libvamp-hostsdk3v5
   libogg-dev
   libvorbis-dev
   libflac-dev
   libflac++-dev
   lv2-dev
   liblilv-dev
   libserd-dev
   libsord-dev
   libsratom-dev
   libsuil-dev
   libportmidi-dev
   libportsmf-dev
   libsbsms-dev
   libsoundtouch-dev
   libtwolame-dev
   libpng-dev
   libjpeg-turbo8-dev
)

apt-get update
apt-get install -y \
   "${build_deps[@]}" \
   "${deps[@]}" 
