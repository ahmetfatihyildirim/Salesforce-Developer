@isTest
public class OpportunityToAccountTest {
    
    @TestSetup
    public static void setup(){
        OpportunityToAccount accOpp=new OpportunityToAccount();
        accOpp.create('AFY', date.newInstance(2022,12,1), 'Qualification');
    }
    
    @isTest
    public static void acc1Test(){
        Account acc1=[SELECT id, name FROM Account];
        
        system.assertEquals('AFY', acc1.name);
        
    }
    
    @isTest
    public static void opp1test(){
        Account acc1=[SELECT id, name FROM Account];
        Opportunity opp1=[SELECT id,name,stagename,closedate,
                          Accountid FROM Opportunity];
        system.assertEquals('Opportunity AFY', opp1.name);
        system.assertEquals(date.newInstance(2022,12,1), opp1.CloseDate);
        system.assertEquals('Qualification', opp1.StageName);
        system.assertEquals(opp1.AccountId, acc1.id);
    }
    
    @isTest
    public static void unauthorizedUserTest(){
        
        String userName = 'TestUser'+DateTime.now().getTime()+'@testAfy.com';
        
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
        
        System.runAs(CustomStdUser1){
            //runAs User olarak çalışırken eğer bir SOQL kullanacaksak bunu da security olarak 
            //filtrelememiz lazım. SOQL sonuna "WITH SECURITY_ENFORCED", "WITH USER_MODE" yazabiliriz.
            //Birde;
            //SObjectAccessDecision securityDecision = Security.stripInaccessible(AccessType.READABLE, multiAccConTest);
            //Contact c = securityDecision.getRecords()[0];
            
            Account acc2=[SELECT id, name FROM Account WITH SECURITY_ENFORCED]; // Security kısıtlaması olmadığı için bu 
            //assertion true olarak işlem görecektir.
            
            System.assertEquals('AFY', acc2.Name);
            
            Opportunity opp2=[SELECT id, name, stageName, closeDate
                              FROM Opportunity WITH SECURITY_ENFORCED];
            System.assertEquals('Opportunity AFY', opp2.name);
            // Test Methodu altında bir tane bile geçmeyen varsa o test Hata verir.
            // 
            /*public static System.SObjectAccessDecision stripInaccessible(System.AccessType accessCheckType,
				List<SObject> sourceRecords, Boolean enforceRootObjectCRUD)*/
            
            //SObjectAccessDecision securityDecision = Security.stripInaccessible(AccessType.READABLE, Contacts);
            //Contact c = securityDecision.getRecords()[0];
            
            /*List<Opportunity> opportunities = new List<Opportunity>{
    new Opportunity(Name='Opportunity1'),
    new Opportunity(Name='Opportunity2', Probability=95)
};

// Strip fields that are not creatable
SObjectAccessDecision decision = Security.stripInaccessible(
    AccessType.CREATABLE,
    opportunities);

// Print stripped records
for (SObject strippedOpportunity : decision.getRecords()) {
    System.debug(strippedOpportunity);
}

// Print modified indexes
System.debug(decision.getModifiedIndexes());

// Print removed fields
System.debug(decision.getRemovedFields());

//Lines from output log
//|DEBUG|Opportunity:{Name=Opportunity1}
//|DEBUG|Opportunity:{Name=Opportunity2}
//|DEBUG|{1}
//|DEBUG|{Opportunity={Probability}}*/
        }
    }
    

}