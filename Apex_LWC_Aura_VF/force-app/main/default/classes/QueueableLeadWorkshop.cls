public class QueueableLeadWorkshop implements Queueable{
    
    //public List<Lead> multilead;
    
    public QueueableLeadWorkshop(Integer howmany){
        //this.multilead=multilead;
        CreateLead.leadCreate(howmany);
    }
    
    public QueueableLeadWorkshop(List<Lead> multiLead){
        //this.multilead=multilead;
        update multilead;
    }
       
    public void execute(Queueablecontext QC){
        system.debug('Queueable is working...');
               
    }

}















/* List<Lead> mlead=new List<Lead>();
        Integer num=1;
        
        for(Lead a:multiLead){
            
            Lead newLead=new Lead();
            newLead.lastName='Test ' + num;
            newLead.company='Test Company ' + num;
            newLead.status='Open - Not Contacted';
            
            mlead.add(newLead);
                            
            num++;
        }
        insert mlead;


List<Lead> mlead=new List<Lead>();
        
         
         for(Integer num=1;num<=100;num++){
                                      
            Lead newLead=new Lead();
            newLead.lastName='Test ' + num;
            newLead.company='Test Company ' + num;
            newLead.status='Open - Not Contacted';
            
            mlead.add(newLead);
           
        }
*/