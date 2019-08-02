function() {
	
	var env = karate.env; // Get system property 'karate.env'
	  if (!env) {	// Set to this if no env provided
	    env = 'DEV';
	  }

	  karate.log('Execution Environment is :', env);
	var config = {
			
		  }
	if (env == 'DEV') {
		config.baseUrl = 'http://13.235.105.183:8080/Demo_HCS/calculator';
		
	} else if (env == 'QA') {
		config.baseUrl = 'https://demohcs.cfapps.io/calculator';
		
	}
	// Timeout if a connection or servers don't respond within 5 seconds
      	karate.configure('connectTimeout', 40000);
      	karate.configure('readTimeout', 40000);
	return config;
}
