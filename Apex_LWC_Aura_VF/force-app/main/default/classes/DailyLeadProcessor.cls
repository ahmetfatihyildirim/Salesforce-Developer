public class DailyLeadProcessor implements Schedulable  {
    Public void execute(SchedulableContext SC){
       List<Lead> LeadObj=[SELECT Id from Lead where LeadSource=null limit 200]; 
        List<Lead> LeadObj2=new List<Lead>();
        for(Lead l:LeadObj){
            l.LeadSource='Dreamforce';
            LeadObj2.add(l);
            
        }
        update LeadObj2;
    }
}