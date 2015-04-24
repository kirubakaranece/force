public with sharing class CountContact {
Map<ID,Integer> updatemap = new Map<ID,Integer>();

public void getAccountdetails(Contact[] acct, string ops){
	for(Contact a: acct){
		system.debug('-----  '+a.AccountId);
		Integer counter = [Select count() 
                    FROM Contact 
                    Where AccountId= :a.AccountId];
            if(ops=='delOp'){
            	counter = counter-1;
            }
                    system.debug('Count--- '+counter);
                    updatemap.put(a.AccountId,counter);
	}
	
	
	if(updatemap!=null){
	for(ID actid:updatemap.keySet()){
		system.debug('KEY--- '+actid);
		system.debug('VALUE--- '+updatemap.get(actid));
		Account act = [SELECT Id from Account where id=:actid];
		//act.Id=actid;
		act.Contacts_Count__c = updatemap.get(actid);
		update act;
	}
	
	}
}

}