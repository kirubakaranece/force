trigger LeadTrg on Lead (after insert) {

List<Task> taskList = new List<Task>();
for(Lead leadRecord : Trigger.new){
	Task newTask  = new Task();
	newTask.Subject= 'Lead Task';
	newTask.Status = 'In Progress';
	newTask.Priority = 'Normal';
	

	newTask.WhoId = leadRecord.Id;
	taskList.add(newTask);
	
}
insert taskList;
}