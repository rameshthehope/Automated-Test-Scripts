Feature: This feature file covers all tests for the Mathematical operations 

Background: 
	Given url baseUrl 
	
	# This test case will verify the Addition of two different numbers and compare the output with expected
Scenario Outline: Verify Addition of different numbers 
	Given params { operand1: '<param1>', operand2: '<param2>', operator: 'add' } 
	When method GET
	Then status 200 
	And match response == '<expected>' 
	
	Examples: 
		|param1|param2|expected|
		|10|20|30.0|
		
		# This test case will verify the Substraction of two different numbers and compare the output with expected
Scenario Outline: Verify Substraction of different numbers 
	Given params { operand1: '<param1>', operand2: '<param2>', operator: 'sub' } 
	When print GET 
	Then status 200 
	And match response == '<expected>' 
	
	Examples: 
		|param1|param2|expected|
		|50|10|40.0|
		
		# This test case will verify the Mutiplication of two different numbers and compare the output with expected
Scenario Outline: Verify Multiplication of different numbers 
	Given params { operand1: '<param1>', operand2: '<param2>', operator: 'multiply' } 
	When method GET 
	Then status 200 
	And match response == '<expected>' 
	
	Examples: 
		|param1|param2|expected|
		|10|10|100.0|
		|300|2|600.0|
		|-10|20|-200.0|
		
		# This test case will verify the Division of two different numbers and compare the output with expected
Scenario Outline: Verify Division of different numbers 
	Given params { operand1: '<param1>', operand2: '<param2>', operator: 'div' } 
	When method GET 
	Then status 200 
	And match response == '<expected>' 
	
	Examples: 
		|param1|param2|expected|
		|25|5|5.0|
		|100|50|2.0|
		|-30|3|-10.0|