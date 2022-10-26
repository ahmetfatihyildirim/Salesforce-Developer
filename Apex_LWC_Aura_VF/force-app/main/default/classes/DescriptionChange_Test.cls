@isTest

public class TTDescriptionChange_Test {
    @isTest

    public static void TTaccDescChangeTest() {

    //create mock data
    
    List<Account> accs = new List<Account>();
    
    for (Integer i = 1; i < 5; i++) {
        Account a = new Account();
        a.Name='Test'+i;
        a.phone='123'+i;
        accs.add(a);      
    }
    insert accs;
    
    
    
    //Call the code
    TTDescriptionChange.TTaccDescChange();
    
    //Assess the results - assert methotds

    List<Account> newAccs = [SELECT Description FROM Account];
    
    for (Account a : newAccs) {
        System.assertEquals('Changed', a.Description);
    }

    System.assertEquals(4, newAccs.size());
    }
}