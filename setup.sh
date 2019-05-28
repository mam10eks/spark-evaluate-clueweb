#!/bin/bash -e

export PATH=/opt/default-hadoop/bin:/opt/default-spark/bin/:$PATH
export HADOOP_HOME=/opt/default-hadoop
export HADOOP_CONF_DIR=/home/maik/workspace/code-admin-clusters/betaweb/hadoop/betaweb
export SPARK_CONF_DIR="/home/maik/workspace/aitools4-aq-cluster-computing/conf/spark"
export SPARK_LOCAL_IP="10.141.0.14"
export HADOOP_USER_NAME=kibi9872


#hadoop fs -put pom.xml /user/${HADOOP_USER_NAME}/example_spark_input
#hdfs dfs -ls /user/${HADOOP_USER_NAME}
#hadoop fs -cat /user/${HADOOP_USER_NAME}/example_spark_input

#hadoop jar /opt/default-hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar pi 1000 1000

#mvn clean install

spark-submit --master local --class org.apache.spark.examples.SparkPi /opt/default-spark/examples/jars/spark-examples_2.11-2.4.3.jar 100

#spark-submit --master local --class org.apache.spark.examples.SparkPi /opt/default-spark/examples/jars/spark-examples_2.11-2.4.3.jar 100

