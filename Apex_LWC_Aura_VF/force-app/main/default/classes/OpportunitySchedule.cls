public class OpportunitySchedule implements Schedulable {
    
    public void execute(SchedulableContext SC){
        
        OpportunityBatch BatchOp=new OpportunityBatch();
        Database.executeBatch(BatchOp, 100);
        
       
    }

}


/* Calling the Code
String jobName='OpportunitySchedule Apex file run';
String cronExp='0 0 0-5 ? * * *';

OpportunitySchedule Schedulable=new OpportunitySchedule();
Id OpJobId = System.schedule(jobName, cronExp, Schedulable);

*/

/*Code:
///*
// List<Opportunity> multiOp=[SELECT Id FROM Opportunity];
        for(Opportunity op:multiOp){
            system.debug('Opportunity Name: '+ op.Name);
        }*/