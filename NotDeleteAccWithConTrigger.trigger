trigger NotDeleteAccWithConTrigger on Account (before delete, before insert, before update, after insert, after update,
												after delete, after undelete) {
    
	OnAccountTriggerHandler triggerHandler = new OnAccountTriggerHandler();
    if(Trigger.isBefore){
		if(Trigger.isDelete){
			triggerHandler.onBeforeDelete(Trigger.Old);
		} 

		if(Trigger.isInsert){}

		if(Trigger.isUpdate){}
    }

	if(Trigger.isAfter){
		
		if(Trigger.isInsert){}

		if(Trigger.isUpdate){}

		if(Trigger.isDelete){}

		if(Trigger.isUndelete){}
	}
}