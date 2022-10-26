trigger CourtTrigger on Court__c (After update) {
    
    Id courtId;
    for(Court__c c:Trigger.new){
        courtId=c.id;
    }
    
    if(!checkrecursive.isRunBefore){
        checkrecursive.isRunBefore=true;
        
        court__c Court=[SELECT id, name FROM Court__c WHERE id=:courtId LIMIT 1];
        court.name='Recursive Method';
        Update Court;
    }

}