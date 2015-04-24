trigger PrimaryContact on Contact (after update,after insert) {
ContactPrimary cp= new ContactPrimary();
if (!RecursiveTriggerHelper.isAlreadyModified() ) {
	RecursiveTriggerHelper.setAlreadyModified();
	cp.updatePrimry(Trigger.new);

}

}