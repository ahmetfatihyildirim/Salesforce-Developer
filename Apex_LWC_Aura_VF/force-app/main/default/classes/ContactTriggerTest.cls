@isTest
public class ContactTriggerTest {
    
    @testSetup
    public static void setup(){
        Account acc1=new Account();
        acc1.name='Test';
        acc1.Phone='(650) 450-8810';
        insert acc1;
        
        Account acc2=new Account();
        acc2.name='Test2';
        acc2.Phone='(312) 2445566';
        insert acc2;
    }
    
    
    @isTest
    public static void singleConTest1(){
        Account acc=[SELECT id FROM Account LIMIT 1];    
        system.debug(acc);
        
        Contact con1 = New Contact();
        con1.firstName = 'No Phone ';
        con1.LastName = 'Test ';
        con1.AccountId= acc.id;
        
        insert con1;
        
        Contact con=[SELECT id, Phone FROM Contact];
        
        system.assertEquals('(650) 450-8810', con.Phone);
    }
    
    
    
    @isTest
    public static void multiConTest2(){
        List<Account> multiAcc=[SELECT id, Name, Phone FROM Account];
        
        List<Contact> multiContact = New List<Contact>();
        
        for(Integer no=1;no<=10;no++){
            
            Contact sNoPhonecontact = New Contact();
            sNoPhonecontact.firstName = 'No Phone '+no;
            sNoPhonecontact.LastName = 'TestN '+no;
            sNoPhonecontact.accountid = multiAcc.get(0).id;
            
            multiContact.add(sNoPhonecontact);
            
            Contact sOtherNoPhonecontact = New Contact();
            sOtherNoPhonecontact.firstName = 'No Phone Other '+no;
            sOtherNoPhonecontact.LastName = 'Test Other '+no;
            sOtherNoPhonecontact.accountid = multiAcc.get(1).id;
            
            multiContact.add(sOtherNoPhonecontact);
            
            Contact scontact = New Contact();
            scontact.firstName = 'YES Phone '+no;
            scontact.LastName = 'TestY '+no;
            scontact.phone = '999999'+no;
            scontact.accountid = multiAcc.get(0).id;
            
            multiContact.add(scontact);
            
            Contact sOthercontact = New Contact();
            sOthercontact.firstName = 'YES Phone Other '+no;
            sOthercontact.LastName = 'TestY2 '+no;
            sOthercontact.phone = '999999'+no;
            sOthercontact.accountid =multiAcc.get(1).id;
            
            multiContact.add(sOthercontact);
        }
        insert multiContact; 
        
        List<Contact> insertedCon=[SELECT id, name, Phone, AccountId FROM Contact];
        
        system.debug(insertedCon);
        
        Integer num=1;
        for(Contact con:insertedCon){
            if(con.name.contains('No Phone')&& con.AccountId==multiAcc.get(0).id){
                system.assertEquals('(650) 450-8810', con.Phone);
            }else if(con.name.contains('No Phone Other')&& con.AccountId==multiAcc.get(1).id){
                system.assertEquals('(312) 2445566', con.Phone);
            }else if(con.phone.contains('999999'+num)&& con.AccountId==multiAcc.get(0).id){
                system.assertEquals('999999'+num, con.Phone);
            }else if(con.phone.contains('999999'+num)&& con.AccountId==multiAcc.get(1).id){
                system.assertEquals('999999'+num, con.Phone);
            }
            num++;
            
        }
        //system.assertEquals(40, insertedCon.size());
    }        
    
}