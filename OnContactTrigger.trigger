trigger OnContactTrigger on Contact (before delete, before insert, before update, after insert, after update,
												after delete, after undelete)  {

	OnContactTriggerHandler conHandler = new OnContactTriggerHandler();

	if(Trigger.isBefore){
		if(Trigger.isDelete){} 

		if(Trigger.isInsert){}

		if(Trigger.isUpdate){}
    }

	if(Trigger.isAfter){
		
		if(Trigger.isInsert){
//			WorkflowEventActionHandler.AfterInsert(Trigger.New);
		}

		if(Trigger.isUpdate){}

		if(Trigger.isDelete){}

		if(Trigger.isUndelete){}
	}
}