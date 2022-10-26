@isTest

public class AccountUIHandlerTEST {
    @isTest
    public static void CreateTest1(){
        String result = AccountUIHandler.create('TEST');
        System.assertEquals(result, 'Success');
    }
    @isTest
    public static void CreateTest2(){
        String result = AccountUIHandler.create('TEST');
        Account singleAcc = [SELECT id,Name FROM Account LIMIT 1];
        System.assertEquals(singleAcc.Name, 'TEST');
    }
}