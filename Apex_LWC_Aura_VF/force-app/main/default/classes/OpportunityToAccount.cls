public class OpportunityToAccount {
    
    public void create(String accName, Date closeDate, String stage){
        Account acc=new Account();
        acc.name=accName;
        insert acc;
        
        Opportunity opp=new Opportunity();
        opp.name='Opportunity '+accName;
        opp.CloseDate=closeDate;
        opp.StageName=stage;
        opp.AccountId=acc.id;
        insert opp;
        
        
    }

}