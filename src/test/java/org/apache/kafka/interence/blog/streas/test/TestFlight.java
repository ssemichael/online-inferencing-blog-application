package org.apache.kafka.interence.blog.streas.test;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.kafka.inference.blog.data.DataLoader;
import org.apache.kafka.inference.blog.ml.ModelBuilder;
import org.apache.mahout.classifier.sgd.OnlineLogisticRegression;
import org.junit.Test;

public class TestFlight {
	
	@Test
	public void test1() throws IOException {
		
		//Map<String, OnlineLogisticRegression> map = ModelBuilder.train(this.getClass().getClassLoader().getResource("allFlights.txt").getPath());
		ModelBuilder.train(this.getClass().getClassLoader().getResource("incoming_data2.csv").getPath());
		
	}
	
	@Test
	public void testLoader() throws IOException {
		//Map<String, List<String>> trainingData = DataLoader.getFlightDataByAirport(this.getClass().getClassLoader().getResource("allFlights.txt").getPath());
		Map<String, List<String>> trainingData = DataLoader.getFlightDataByAirport(this.getClass().getClassLoader().getResource("incoming_data2.csv").getPath());
		Map<String, List<String>> smapleData = ModelBuilder.getRandomSampling(trainingData);
		DataLoader.printMap(smapleData);	
	}

}
