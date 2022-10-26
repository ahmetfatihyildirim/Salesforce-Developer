public class CreateAccClass {
          
    public static void create(String accName, Integer howmany, String phn){
        
        List<Account> multiAcc=new List<Account>();
        
        for(Integer i=0;i<howmany;i++){
        	Account acc=new Account();
        	acc.Name=accName+' '+i;
        	acc.Phone=phn+i; 
            multiAcc.add(acc);
        }
        insert multiAcc;
    }

}