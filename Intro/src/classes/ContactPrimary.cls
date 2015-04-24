public with sharing class ContactPrimary {
	
	public void updatePrimry(Contact[] cntlist){
		
		List<String> cntmodified = new List<String>();
		for(Contact cnt : cntlist){
			if(cnt.AccountId != null && cnt.Primary__c == true){
				cntmodified.add(cnt.AccountId);
			}
			}
			system.debug(cntmodified.size());
			
			List<Contact> newlist = [Select primary__C from Contact where Contact.AccountId IN :cntmodified AND ID <> :cntlist];
			system.debug('###########'+newlist);
			List<Contact> updatedlist = new List<Contact>();
			for(Contact toupd : newlist){
			
				toupd.primary__C=false;
				updatedlist.add(toupd);
				
			}
			update updatedlist;
		}
}