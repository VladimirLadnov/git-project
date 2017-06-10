trigger LessonTrigger on Lesson__c (before insert, before update, before delete, after insert,
									after update, after delete, after undelete)  { 

	if(Trigger.isBefore){
		
		if(Trigger.isInsert){
			
		}

		if(Trigger.isUpdate){}

		//Not to delete lessons
		if(Trigger.isDelete){
			if(CheckRecursive.run()){
				LessonHandler.BeforeDelete(Trigger.Old);
			}
		}
	}

	if(Trigger.isAfter){
		
		if(Trigger.isInsert){
	
		}

		if(Trigger.isUpdate){
			
		}

		if(Trigger.isDelete){}

		if(Trigger.isUndelete){}
	}
}