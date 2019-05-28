package de.webis.spark_cw09_tutorial;

import org.apache.spark.SparkConf;
import org.apache.spark.SparkContext;
import org.apache.spark.api.java.JavaSparkContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	try(JavaSparkContext context = new JavaSparkContext(context()))
    	{
        	System.out.println(context.textFile("bla").<Integer>aggregate(0, (a,b) -> a+1, (a,b) -> a+b));	
    	}
    }
    
    private static SparkContext context()
    {
    	SparkConf conf = new SparkConf(true);
    	conf.setAppName("maik-froebe-hello-world-spark");
    	SparkContext ret = new SparkContext(conf);
    	
    	return ret;
    }
}
