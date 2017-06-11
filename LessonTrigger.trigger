trigger LessonTrigger on Lesson__c (before insert, before update, before delete, after insert,
									after update, after delete, after undelete)  { 

	//Before's triggers								
	if(Trigger.isBefore){
		
		if(Trigger.isInsert){
			
		}

		if(Trigger.isUpdate){}

		//some diff
		//Not to delete lessons
		if(Trigger.isDelete){
			if(CheckRecursive.run()){
				LessonHandler.BeforeDelete(Trigger.Old);
			}
		}
	}

	//After's triggers
	if(Trigger.isAfter){
		
		if(Trigger.isInsert){
	
		}

		if(Trigger.isUpdate){
			
		}

		if(Trigger.isDelete){}

		if(Trigger.isUndelete){}
	}
}