public class OpportunityBatch implements Database.Batchable<SObject> {
    
    //Start :50 Million data girilebilir ve burada small batch lere ayrılıyor.
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([SELECT Id FROM Opportunity]);  
        
    }
    
    //Execute :  small batch ler işleniyor.
    public void execute(Database.BatchableContext BC, List<Opportunity> scope){
        system.debug('Scope size '+ scope.size());
        for (opportunity s:scope){
            
        }
    }
    
    //Finish : 
    public void finish(Database.BatchableContext BC){
        system.debug('Batch APEX Opportunity Finished');
    }

}
/*
 *OpportunityBatch BatchOp = New OpportunityBatch();
// Database.executeBatch(BatchOp);   // default : 1000/200= 5 repeat
Database.executeBatch(BatchOp, 5);
// String BatchOpJobID = System.scheduleBatch(BatchOp, 'my opportunity Batch', 10); // 200 default
// String BatchOpJobID = System.scheduleBatch(BatchOp, 'My Opportunity Batch', 10, 2000); // max 2000 default
*/