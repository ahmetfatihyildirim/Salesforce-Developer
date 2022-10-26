public class LeadQueueable implements Queueable{
    
    private List<Lead> multiLead;
    
    public LeadQueueable(List<Lead> multiLead){
        this.multiLead=multiLead;
    }
    
    
    public void execute(QueueableContext context) {
        system.debug('Queueable Apex is working...'+multiLead);   
        
        for(Lead singleLead:multiLead){
            
            singlelead.firstname= singleLead.firstname.toUpperCase()+' '+'🤩';
            singlelead.LastName= singleLead.lastname.toUpperCase();
            singlelead.Company= singleLead.company.toUpperCase();
             
        }
        update multiLead;
    }
    
}