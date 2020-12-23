#!/bin/bash

export MAVEN_DISABLE_ENV=yes
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
#export MAVEN_OPTS="-Xmx1048m -Xms256m -XX:MaxPermSize=312M"
export PATH=$MAVEN_HOME/bin:$PATH

