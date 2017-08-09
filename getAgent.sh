#!/bin/sh

<<<<<<< HEAD
#Get Current agent
=======
>>>>>>> 0abb64ef722deb32eeb8edfcef80049348ed5ec6
curl https://dl.signalsciences.net/sigsci-agent/sigsci-agent_latest.tar.gz > sigsci-agent_latest.tar.gz
rm -rf contrib/sigsci-agent/*
cd contrib/sigsci-agent
tar -zxvf ../../sigsci-agent_latest.tar.gz
cd ../../
rm -rf sigsci-agent_latest.tar.gz
<<<<<<< HEAD

=======
>>>>>>> 0abb64ef722deb32eeb8edfcef80049348ed5ec6
