trigger LeadTrigg on Lead (before update) {

for(Lead ld : Trigger.new){
	ld.SICCode__c='CODE2';
}

}