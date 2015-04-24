trigger contactcountAct on Contact (before delete, after insert) {
	Contact[] a;
	string operation;
	if(Trigger.isInsert){
			 a =  Trigger.new;
			 operation = 'insertOp';
	}else{
		 a =  Trigger.old;
		  operation = 'delOp';
	}
	system.debug('IN TRG****');
	CountContact cntContact= new CountContact();
	 cntContact.getAccountdetails(a, operation);

     }