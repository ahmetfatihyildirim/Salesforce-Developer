@isTest
public class AccountProcessorTest {
    @isTest
    public static void test1(){
        
        List<Account> accList=new List<Account>();
        List<Contact> conList=new List<Contact>();
        List<Id> idList=new List<Id>();
        
        for(Integer i=0;i<10;i++){
            Account a=new Account();
            a.Name='Test Account '+i;
            acclist.add(a);           
        }
        insert accList;
        
        for(Integer i=0;i<10;i++){
            Contact c=new Contact();
            c.lastname='Test Contact '+i;
            c.AccountId=accList[i].id;
            conList.add(c); 
        }
        insert conList;
        for(Account a:accList){
            idList.add(a.id);            
        }
        
       
        
        test.startTest();
        
        AccountProcessor.countContacts(idList);
        List<Account> acc2=new List<Account>();
        acc2=[SELECT Id FROM Account];
        system.assertEquals(10, acc2.size());
        
        
        
        test.stopTest();
    }

}