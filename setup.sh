#!/bin/bash -e

export PATH=/opt/default-hadoop/bin:/opt/default-spark/bin/:$PATH
export HADOOP_HOME=/opt/default-hadoop
export HADOOP_CONF_DIR=/home/maik/workspace/code-admin-clusters/betaweb/hadoop/betaweb
export SPARK_CONF_DIR="/home/maik/workspace/aitools4-aq-cluster-computing/conf/spark"
export SPARK_LOCAL_IP="10.141.0.14"
export HADOOP_USER_NAME=kibi9872


hdfs
hdfs dfs -ls /user/${HADOOP_USER_NAME}

#hadoop jar /opt/default-hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar pi 1000 1000

#mvn clean install

#spark-submit --class de.webis.spark_cw09_tutorial.App target/spark-cw09-tutorial-1.0-SNAPSHOT.jar
