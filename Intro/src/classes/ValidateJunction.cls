public with sharing class ValidateJunction {

public void afterinsert(jun1__c[] jun){
	for(jun1__c j: jun){
		j.Name='welcome1';
	}
}	
}