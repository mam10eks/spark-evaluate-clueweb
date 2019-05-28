package de.webis.spark_cw09_tutorial;

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
    	try(JavaSparkContext context = new JavaSparkContext(new SparkContext()))
    	{
        	System.out.println(context.textFile("bla").aggregate(0, null, null));	
    	}
    }
}
