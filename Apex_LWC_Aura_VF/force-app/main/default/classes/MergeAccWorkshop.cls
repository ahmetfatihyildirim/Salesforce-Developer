public class MergeAccWorkshop {
    public void CreateAccContOp(String compName, Integer howManyWorkers, String fName,String lName){
        Account newAcc = New Account(Name=compName);
        insert newAcc;
        
        List<Contact> multiContact = New List<Contact>();
        
        for(Integer workers=1;workers<=howManyWorkers;workers++){
            Contact newCon = New Contact();
            newCon.firstName = fName + ' ' + workers;
            newCon.lastName= lName + ' ' + workers; 
            newCon.AccountId= newAcc.id;
            multiContact.add(newCon);
        }
        
        insert multiContact;
        
        
        List<Opportunity> multiOp = New List<Opportunity>();
        
        for(Integer opp=1;opp<=10;opp++){
            Opportunity newOp = New Opportunity();
            newOp.Name = compName+ ' ' + opp;
            newOp.CloseDate= date.TODAY()+(opp*15);
            newOp.StageName = 'Value Proposition';
            newOp.AccountId = newAcc.id;
            multiOp.add(newOp);
        }
        insert multiOp;
        
    }    
   
    public void deleteAccContOp(String DeleteAccName, String DeleteContactName){
        
        String workersName = '%' + DeleteContactName + '%';
        
        List<Contact> contactDelete = [SELECT Id 
                               FROM Contact 
                               WHERE Name LIKE :workersName];
        Delete contactDelete;
        
        
        String opName = '%' +DeleteAccName+ '%';
        List<Opportunity> deleteOp  =[SELECT Id 
                                     FROM Opportunity
                                     WHERE Name LIKE :opName];
        
        String accName= '%' +DeleteAccName+ '%';
        List<Account> deleteAcc = [SELECT Id 
                          FROM Account
                          WHERE Name LIKE :AccName];
        delete deleteAcc;
        
    }
    
    
}