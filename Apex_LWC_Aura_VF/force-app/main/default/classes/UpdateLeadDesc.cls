public class UpdateLeadDesc {
    
    //String desc1='This lead’s description updated to apply bulkapex test';
    public static void UpdateLeadDesc(String desc1){
        List<Lead> leads=[SELECT id, name, Description FROM Lead];
        List<Lead> leads2=new List<Lead>();//updated
        
        for(Lead singleLead:leads){
            singleLead.Description=desc1;
            leads2.add(singleLead);
        }
        update leads2;
        //system.debug(leads2);
    }

}