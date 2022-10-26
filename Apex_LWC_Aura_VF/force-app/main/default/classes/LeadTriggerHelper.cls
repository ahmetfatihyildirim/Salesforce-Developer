public class LeadTriggerHelper {
    
    
    public void checkTitle(Map<Id,Lead> LeadOldMap, Map<Id,Lead> LeadNewMap){
        
        Set<Id> LeadSet = LeadNewMap.keyset();
        
        for(Id LeadId:LeadSet){
            
            String OldTitle = LeadOldMap.get(LeadId).Title;
            String NewTitle = LeadNewMap.get(LeadId).Title;
            
            System.debug('OldTitle : '+ OldTitle);
            System.debug('NewTitle : '+ NewTitle);
            
            if(String.isNotBlank(OldTitle) && OldTitle.toUpperCase()=='CEO' && NewTitle.toUpperCase()!='CEO') { 
                LeadNewMap.get(LeadId).Title.addError(' if title old value is CEO you cannot change this field. ');
            }
                        
            
        }
    
     }
    
    
    public void checkPhone(Map<Id,Lead> LeadOldMap, Map<Id,Lead> LeadNewMap){
        
        Set<Id> LeadSet = LeadNewMap.keyset();
        system.debug('checkPhone SET ID : '+ LeadSet);
        for(Id LeadId:LeadSet){
            
            String OldPhone = LeadOldMap.get(LeadId).Phone;
            String NewPhone = LeadNewMap.get(LeadId).Phone;
            
            System.debug('OldPhone : '+ OldPhone);
            System.debug('NewPhone : '+ NewPhone);
            
            if(String.isBlank(NewPhone)){
                LeadNewMap.get(LeadId).Phone.addError(' Phone Must Be Filled. ');
            }
            
            
        }
        
    }
    
    
    
    
    //Map - Set - List collection Trigger.newmap (Trigger.oldMap)
    public void checkFieldMap(Map<Id,Lead> LeadMap){
        
        Set<Id> LeadSet = LeadMap.keySet();
        //List<Lead> LeadList = LeadMap.values();
        
        List<Lead> LeadEmpty = new List<Lead>();
        
        for(Id LeadId:LeadSet){
            Lead singleLead = new Lead();
            singleLead=LeadMap.get(LeadId);
            
            if(String.isBlank(singleLead.Phone)){
                LeadEmpty.add(singleLead);
                
            }
        }
        system.debug('Leads without phone '+LeadEmpty);
        assignTask(LeadEmpty,'Trigger.newMap');
    }
        
    
    
    public void checkFieldList(List<Lead> leadList){ //trigger.new bir list i temsil eder.
        
        List<Lead> LeadListNoData=new List<Lead>();
        
        for(Lead singleLead:leadList){
            if(String.isBlank(singleLead.phone)){
                LeadListNoData.add(singleLead);
            }
        }
        system.debug('Leads without phone '+LeadListNoData);
        assignTask(LeadListNoData, 'Trigger.new');
    }
    
    
    public void assignTask(List<Lead> LeadListNoPhone, String TaskName){
        
        List<Task> multiTask=new List<Task>();
        
        for(Lead singleLead:LeadListNoPhone){
            Task singleTask=new Task();
            singleTask.Subject='Phone number must be filled '+ TaskName;
            singletask.ActivityDate=Date.today()+5;
            singleTask.WhoId=singleLead.id; //Lookup Contact,Lead
            singleTask.OwnerId=singleLead.OwnerId; //Lookup Calendar User Group
            singleTask.Status='Not Started';
            // add notification
            singleTask.IsReminderSet=True;
            singleTask.ReminderDateTime=Datetime.now();
            // add to list
            multiTask.add(singleTask);
            
        }
        insert multiTask;
    }

}