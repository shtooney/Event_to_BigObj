trigger EventPersist on Speed__e (after insert) {

    for (Speed__e event : Trigger.New) {
        Integer mph = event.mph__c.intValue();
        String contactId = event.Contact__c;
        
	BigObjectCreate.createBigObject(mph, contactId);
   }
    
}
