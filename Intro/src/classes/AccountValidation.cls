public class AccountValidation {
	
	public static void validateName(Account[] account ){
		for(Account a: account){
      if (a.Name == 'bad') 
        a.name.addError('Bad name. Please enter someother name'); // prevent update
    
     if (a.customerPriority__c == 'High')
     	
     	a.SLA__c = 'Gold';
      }
	}
}