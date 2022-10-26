@isTest

public class CreateAccClassTest {
    
    @isTest
    public static void createtest1(){
        CreateAccClass.create('Afy', 5, '12345');
        
        List<Account> acc=[SELECT id,name,phone FROM Account];
        system.assert(acc.size()>0);
        system.assertEquals('AFY 0',acc[0].name);
    }

}