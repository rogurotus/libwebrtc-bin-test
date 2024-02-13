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

# Removing large packages
sudo apt-get remove -y 'php.*' aspnetcore-* dotnet-* firefox gcc libmysqlclient* mysql-* google-cloud-sdk hhvm google-chrome-stable firefox powershell mono-devel
sudo apt-get autoremove -y
sudo apt-get clean

# Android SDK の削除
sudo rm -rf /usr/local/lib/android

df -h
