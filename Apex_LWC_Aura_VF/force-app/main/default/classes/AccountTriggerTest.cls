@isTest
public class AccountTriggerTest {
    
    @TestSetup
    public static void setup(){
        //Prep Data
        Account singleAcc=new Account(name='test0',phone='123456789');
        insert singleAcc;
        
        //Prep Data
        List<Account> multiAcc=new List<Account>();
        for(Integer testnumber=1;testnumber<=100;testnumber++){
            Account oneAcc=new Account(name='test'+testnumber,phone='123456'+testnumber);
            multiAcc.add(oneAcc);
        }        
        insert multiAcc;
        //System.debug(multiAcc.size());
    }
    
    
    @isTest
    public static void updateName_singleAcc_1(){
        //Test
        Account singleresultAcc=[SELECT id, name, Phone FROM Account LIMIT 1];
        system.assert(String.isNotBlank(singleresultAcc.id)); //Boolean kontrol
        system.assertEquals('TEST0', singleresultAcc.name); //Uppercase olduğunun test edilmesi
    }
    
     @isTest
    public static void updateName_multiAcc_2(){
               
        //Test
        
        List<Account> resultAcc=[SELECT id, name, Phone FROM Account];
        
        system.assertEquals(101, resultAcc.size());
        
        Integer testNum=0;
        for(Account singleTestAcc:resultAcc){
            system.assertEquals('TEST'+testNum, singleTestAcc.Name);
            testNum++;
        }
        
    }
    @isTest
    public static void updateName_singleAcc_3(){
        //Prep Data
        Account singleAcc=new Account(name='test123');
        
        String Errormsg;
        try{
            insert singleAcc;
        }catch(Exception e){
            Errormsg=e.getMessage();
        }
        //Test
              
        system.assert(Errormsg.contains('Phone'));
    }

}