public class CreateLead {
    
    @future    
	public static void leadCreate(Integer howmany){
        
        List<Lead> mlead=new List<Lead>();
        
         
         for(Integer num=1;num<=howmany;num++){
                                      
            Lead newLead=new Lead();
            newLead.lastName='Test2 ' + num;
            newLead.company='Test2 Company ' + num;
            newLead.status='Open - Not Contacted';
            
            mlead.add(newLead);
           
        }
        insert mlead;
    }


}