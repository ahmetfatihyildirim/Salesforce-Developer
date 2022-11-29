public class AccountHandler {
    
    public static Account insertNewAccount(String nm){
        try{
            Account acct=new Account(Name=nm);
        	insert acct;
        	return acct;
        	}catch (DmlException e){
            system.debug('An error occured '+ e.getMessage());
            return null;
		}
          
	}
    
    public static void insertAccount(Integer N){
        List<Account> addAccounts=new List<Account>();
        Integer Counter=1;
            while(counter <= N){
            Account store = new Account();
            store.Name = 'Acme Inc ' + counter;
            store.AccountNumber = 'A000n';
            addAccounts.add(store);
            System.debug(addAccounts);
            
            counter +=1;
       
   	 }
      insert   addAccounts;
        
	}
}