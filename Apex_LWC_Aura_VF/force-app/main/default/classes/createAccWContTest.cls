@isTest
public class createAccWContTest {
    
    @isTest
    public static void createTest1(){
        //prepare test data
        createAccWCont testAccCon= new createAccWCont();
        testAccCon.create('Test Acc1','Worker fname-1','Worker lname-1');
        
        //read the data
        Account testAcc=[SELECT id, Name FROM Account];
        System.debug(testAcc);
        
        Contact testCon=[SELECT id, firstname, lastname, accountid FROM Contact];
        System.debug(testCon);
        
        //check and test the data
        System.assertEquals(testAcc.id, testCon.AccountId);
        System.assertEquals('Test Acc1', testAcc.Name);
        system.assertEquals('Worker fname-1',testCon.FirstName);
        system.assertEquals('Worker lname-1',testCon.lastName);
        
        
    }

}