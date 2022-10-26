public class LeadFuture {
    
    @future
    public static void toUpperName(Set<Id> multiID){
        
        List<Lead> multiLead = [SELECT Id, FirstName,LastName FROM Lead WHERE Id=:multiID];
        
        for(Lead singleLead:multiLead){
            singleLead.LastName = singleLead.LastName.toUpperCase();
        }
        update multiLead;
        
    }

}