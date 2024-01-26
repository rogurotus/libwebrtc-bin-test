#!/bin/bash

df -h

# Cache 済み Docker Image の削除
docker rmi $(docker images -q -a)

# Boost の削除
sudo rm -rf /usr/local/share/boost

# .Net Core の削除
sudo rm -rf /usr/share/dotnet

# Haskell の削除
sudo rm -rf /opt/ghc

# Android SDK の削除
sudo rm -rf /usr/local/lib/android

df -h


# mvn install:install-file -DgroupId=com.github.instrumentisto -DartifactId=libwebrtc-bin -Dversion=119.0.0.36 -Dfile=/home/human/TempStorage/Downloads/build/libwebrtc-android/aar/libwebrtc.aar -Dpackaging=aar -DgeneratePom=true -DlocalRepositoryPath=./android/ -DcreateChecksum=true