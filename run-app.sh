#!/bin/bash

echo "Starting wildfly swarm app..."
echo "JVMi options => $JAVA_OPTIONS"
echo
java $JAVA_OPTIONS -jar /opt/app-root/bin/hello-swarm.jar
