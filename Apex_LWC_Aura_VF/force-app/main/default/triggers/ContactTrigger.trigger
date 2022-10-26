trigger ContactTrigger on Contact (before insert,before update,before delete,
                                   after insert, after update, after delete,after undelete) {
                                       
	switch on Trigger.operationType {
        //Simple Update & Validation
        when BEFORE_INSERT {
            
            List<Contact> noPhoneContact=new List<Contact>();
            Set<Id> accids=new Set<Id>();
            
            for(Contact con:Trigger.new){
                if(String.isBlank(con.Phone)){
                    noPhoneContact.add(con);
                    accids.add(con.AccountId);
                }
                if(String.isBlank(con.Description)){
                    con.Description='Description is created by Apex...';
                }
            }
            
            Map<Id,Account> accountMap=new Map<Id,Account>([SELECT id, Name, Phone FROM Account 
                                                            WHERE id=:accids]);// set ile oluşan account id lere ait bilgileri
            												//almak için =:accids yazdık
            
            for(Contact con:noPhoneContact){
                con.Phone=accountMap.get(con.AccountId).phone;
            }  
        }
        when BEFORE_UPDATE {
            for(Contact con:Trigger.new){
                con.Description='Contact is updated by '+system.UserInfo.getName();
            }
        }
        when BEFORE_DELETE {}
        
        //API request & Different Object DML
        when AFTER_INSERT {}
        when AFTER_UPDATE {}
        when AFTER_DELETE {}
        when AFTER_UNDELETE {}  // read only
        
    }
  
}