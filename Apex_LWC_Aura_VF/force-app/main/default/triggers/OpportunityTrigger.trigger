trigger OpportunityTrigger on Opportunity (before update) {
    
    
    
    switch on Trigger.operationType {
    when BEFORE_INSERT {}
    when AFTER_INSERT {}
    when BEFORE_UPDATE {
        
        OpportunityTriggerHelper trigHelper = New OpportunityTriggerHelper();
        
        trigHelper.preventStageBack(Trigger.oldMap, Trigger.new);
         
    }
    when AFTER_UPDATE {}
    when BEFORE_DELETE {}
    when AFTER_DELETE {}
    when AFTER_UNDELETE {}
}
  
}