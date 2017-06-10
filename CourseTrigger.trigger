trigger CourseTrigger on Course__c (before insert, before update, before delete, after insert,
									after update, after delete, after undelete)  {

	
	if(Trigger.isBefore){
		
		if(Trigger.isInsert){
			CourseHandler.BeforeInsert(Trigger.New);
		}

		if(Trigger.isUpdate){
			CourseHandler.BeforeUpdate(Trigger.old);
		}

		if(Trigger.isDelete){
			CourseHandler.BeforeDelete(Trigger.Old);
		}
	}

	if(Trigger.isAfter){
		
		if(Trigger.isInsert){
			CourseHandler.AfterInsert(Trigger.New);
		}

		if(Trigger.isUpdate){
			CourseHandler.AfterUpdate(Trigger.New);
		}

		if(Trigger.isDelete){}

		if(Trigger.isUndelete){}
	}
}