@isTest
public class UpdateLeadDescTest {
    
    @isTest
    public static void test1(){
        Lead lead1=new Lead();
        lead1.lastName='Test1';
        lead1.Company='AFY Test';
        lead1.Description='before test description';
        insert lead1;
        
        UpdateLeadDesc.UpdateLeadDesc('This lead’s description updated to apply bulkapex test');
        List<Lead> leads1=[SELECT id, name, description FROM Lead];
        //system.debug(leads1);
        
        for(Lead a:leads1){
            system.assertEquals('This lead’s description updated to apply bulkapex test', a.description);
        }
        
    }
       
}