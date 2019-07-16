package services.math.operations;

import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = "classpath:services/math/operations/API_MathematicalOperations.feature")
public class MathsOperationSingleRunner {

}
