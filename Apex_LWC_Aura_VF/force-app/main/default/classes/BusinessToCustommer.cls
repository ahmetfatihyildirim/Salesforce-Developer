public with sharing class BusinessToCustommer {   // SYSTEM MODE    // USER MODE
    public void create(List<String> nameList){
        
        // SOQL Account Contact  OLS Custom:StandardUser NO ACCOUNT NO CONTACT 
        
        if (Schema.sObjectType.Account.fields.name.isCreateable()) {   // FLS   .isCreateable()
            
            if (Schema.sObjectType.Contact.fields.FirstName.isCreateable()) { 
                
                if (Schema.sObjectType.Contact.fields.LastName.isCreateable()) { 
                    
                    
                    if (Schema.sObjectType.Contact.fields.accountid.isCreateable()) { 
                        
                        list<Account> multiAcc = New List<Account>();
                        for(String fullName:nameList){
                            Account singleAcc = New Account(name=fullName);    
                            multiAcc.add(singleAcc);    
                        }
                        insert multiAcc;
                        
                        list<Contact> multiCon = New List<Contact>();
                        for(Account acc:multiAcc){
                            String fullName= acc.Name;
                            Integer numberofWords = fullName.split(' ').size();
                            String LastName = fullName.split(' ').get(numberofWords-1);
                            String FirstName = fullName.replace(LastName,'');  
                            
                            Contact singleCon = New Contact(FirstName=FirstName,LastName=LastName,accountid=acc.id); 
                            // system.debug('apex class : ' + singleCon);
                            
                            multiCon.add(singleCon);            
                        }
                        insert multiCon;
                        
                    }  // Contact.fields.accountid
                    
                }   // Contact.fields.LastName
                
            }    // Contact.fields.FirstName
            
        }   // Account.fields.name
       
    }   // METHOD END
    
}  // CLASS END