function() {
	var config = {
			
		  }
	config.baseUrl = 'http://13.235.105.183:8080/Demo_HCS/calculator';
	// Timeout if a connection or servers don't respond within 5 seconds
      	karate.configure('connectTimeout', 40000);
      	karate.configure('readTimeout', 40000);
	return config;
}
