#!/bin/bash

#mvn clean install -DskipTests

CLASSPATH=resources
CLASSPATH=$CLASSPATH:app/*
CLASSPATH=$CLASSPATH:libs/*

echo $CLASSPATH

JAVA_OPTS="-Xmx1025m -Xms1024m -XX:MaxPermSize=128m -DUSE_HTTP_TUNNELING=true -DnspRestClient.trustall=true"
#DEBUG_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8001"
XML_OPTS="-Djavax.xml.bind.JAXBContext=com.sun.xml.internal.bind.v2.ContextFactory -Djavax.xml.parsers.DocumentBuilderFactory=com.sun.org.apache.xerces.internal.jaxp.DocumentBuilderFactoryImpl -Djavax.xml.parsers.SAXParserFactory=com.sun.org.apache.xerces.internal.jaxp.SAXParserFactoryImpl"
port=$2
kfk_conn=$3
#java -cp $CLASSPATH $JAVA_OPTS $DEBUG_OPTS $XML_OPTS com.heng.kafka.stream.$1 $port
java -cp $CLASSPATH $JAVA_OPTS $XML_OPTS $1 $port $kfk_conn $4