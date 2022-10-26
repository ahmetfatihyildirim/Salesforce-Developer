@isTest
public class BusinessToCustommerTest2 {   // TEST CLASS ------------------------
    
    @testSetup
    public static void setup(){   // SYSTEM ADMIN
        // prepare test DATA  READ ONLY
        BusinessToCustommer b2c = New BusinessToCustommer();        
        List<String> listOfCustomerTEST = New List<String>();        
        for(Integer counter=1;counter<=10;counter++){            
            listOfCustomerTEST.add('Test '+counter+' Test'+counter);        
        }        
        b2c.create(listOfCustomerTEST); 
       
    }
    
    @isTest
    public static void create2ParamsTest1(){
        // read test prep data from setup method. ( test setup )
        
        // Start Test
        
        Test.startTest();
        
        List<Contact> multiAccConTest =[SELECT id, Account.id, Account.name, name, firstName,lastName,Accountid,Phone FROM Contact];   // child to parent 
        
        for(Contact singleTest:multiAccConTest){
            
            System.assertEquals(singleTest.Account.id, singleTest.Accountid);
            System.assertEquals(singleTest.Account.name, singleTest.name);
            System.assert(string.isNotBlank(singleTest.Accountid));
            System.assert(string.isNotBlank(singleTest.Account.id));
            
            singleTest.Phone='234234234';
            
            System.assertEquals('234234234', singleTest.Phone);
            
        }
        update multiAccConTest;
        system.debug('AFTER UPDATE TEST 1');
        for(Contact singleTest:multiAccConTest){
            
            System.assertEquals('234234234', singleTest.Phone,'TEST 1 phone check');
            
        }
        
        System.debug('test1 Current User: ' + UserInfo.getUserName());
        System.debug('test1 Current Profile: ' + UserInfo.getProfileId());
        Test.stopTest(); 
        // STop Test
    }
    
    @isTest
    public static void test2(){
        // read test prep data from setup method. ( test setup )
        List<Contact> multiAccConTest =[SELECT id, Account.id, Account.name, name, firstName,lastName,Accountid,Phone FROM Contact];   // child to parent 
        System.assertEquals(10, multiAccConTest.size());
        
        for(Contact singleTest:multiAccConTest){
            
            System.assertEquals(null, singleTest.Phone,'TEST 2 phone check');
            
        }
        
        // The following code runs as user 'CustomStdUser1'
        System.debug('test2 Current User: ' + UserInfo.getUserName());
        System.debug('test2 Current Profile: ' + UserInfo.getProfileId());
    }
    
    
    @isTest
    public static void testUnAuthorizedUserTest(){
        
        // create new user 
        
        String userName = 'sdtUser'+DateTime.now().getTime()+'@testClarusway.com';
        
        Profile p = [SELECT Id FROM Profile WHERE Name='Custom : Standard USER'];
        
        User CustomStdUser1 = New User();
        CustomStdUser1.Alias='CusSTD';
        CustomStdUser1.Email='customstandarduser1@testorg.com';
        CustomStdUser1.EmailEncodingKey='UTF-8';
        CustomStdUser1.LanguageLocaleKey='en_US';
        CustomStdUser1.LocaleSidKey='en_US';
        CustomStdUser1.ProfileId = p.Id;
        CustomStdUser1.UserName=userName;
        CustomStdUser1.LastName='Testing1';
        CustomStdUser1.TimeZoneSidKey='America/Los_Angeles';
        
        System.debug(CustomStdUser1);
        
        System.runAs(CustomStdUser1) {   // NO AUTH. USER LOGIN
            
            // PREP DATA...
            
            BusinessToCustommer b2c = New BusinessToCustommer();        
            List<String> listOfCustomerTEST = New List<String>();        
            for(Integer counter=1;counter<=10;counter++){            
                listOfCustomerTEST.add('NOFLS '+counter+' NOFLS'+counter);        
            }        
            b2c.create(listOfCustomerTEST); 
            
            // The following code runs as user 'CustomStdUser1'
            System.debug('Current User: ' + UserInfo.getUserName());
            System.debug('Current Profile: ' + UserInfo.getProfileId());
            
            List<Contact> multiAccConTest =[SELECT id, Account.id, Account.name, 
                                            name, firstName,lastName,Accountid,Phone 
                                            FROM Contact
                                            WHERE firstName LIKE '%NOFLS%'];   // child to parent 
            system.debug(multiAccConTest);
            
            System.assertEquals(0, multiAccConTest.size(),'unauthorized check');
            
        }
        
    }
    
}