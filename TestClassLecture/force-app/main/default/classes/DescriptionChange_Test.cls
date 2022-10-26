@isTest
public class DescriptionChange_Test {


    @isTest
    public static void accDescChangeTest() {

        //create mock data

        List<Account> acc=new List<Account>();

        for(Integer i=0;i<5;i++){
            Account a =new Account();
            a.Name='Test '+i;
            a.Phone='123'+i;
            acc.add(a);
        }
        insert acc;

        //Call the class
        //Test.startTest();

        DescriptionChange.accDescChange();

        //System.assertEquals(1, Limits.getDmlStatements());

        //Test.stopTest();

        //Assess the results

        List<Account> newAcc=[SELECT Description FROM Account];

        for(Account a:newAcc){
            system.assertEquals('Changed',a.Description);
        }
        system.assertEquals(2,Limits.getDmlStatements());
        System.assertEquals(5,newAcc.size());


    }
    
}
