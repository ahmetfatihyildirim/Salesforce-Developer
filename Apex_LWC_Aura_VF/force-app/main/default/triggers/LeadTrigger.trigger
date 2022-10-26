trigger LeadTrigger on Lead (after insert, before update, after update) {
    //bir Lead kaydı oluştuğunda telefon yoksa lead sahibine bir task assign et.
    Set<Id> SetLeadID=new Set<Id>();
    
    switch on Trigger.operationType {
        
        when BEFORE_INSERT {}
        when AFTER_INSERT {
            
            for(Lead singleLead:trigger.new){
                system.debug(' trigger : '+ singleLead.id);
                SetLeadID.add(singleLead.id);
            }
            
            
             system.debug(' setof id  : '+ SetLeadID);
           LeadFuture.toUpperName(SetLeadID);
            
            /*System.debug('AFTER_INSERT working .... ');
            
            LeadTriggerHelper triggerHelper=new LeadTriggerHelper();
            
            triggerHelper.checkFieldList(trigger.new);*/
            
        }
        when BEFORE_UPDATE {
            
            Id LeadJobId=System.enqueueJob(new LeadQueueable(Trigger.new));
            
            /*System.debug('BEFORE_UPDATE working .... ');
            LeadTriggerHelper ValidatePhone = New LeadTriggerHelper();
            system.debug('oldmap : '+trigger.oldMap);
            system.debug('newmap : '+trigger.newMap);
            
            ValidatePhone.checkPhone(trigger.oldMap,trigger.newMap);
            ValidatePhone.checkTitle(trigger.oldMap,trigger.newMap);*/
            
            
        }
        when AFTER_UPDATE {
            
            

            
            
            
            
            // Before Update de Phone yazılmayıca uyarı verdiği için alttaki kod 
            // kesilmektedir ondan dolayı yoruma aldım.
            /*System.debug('AFTER_UPDATE working .... '); 
            
            LeadTriggerHelper triggerHelper=new LeadTriggerHelper();
            
            triggerHelper.checkFieldMap(trigger.newMap);*/
        }
        when BEFORE_DELETE {}
        when AFTER_DELETE {}
        when AFTER_UNDELETE {}
        
    }
    
}



//---------------------
//
/*trigger LeadTrigger on Lead (before insert, after insert,before update, after update) {
   
    
    Set<Id> SetLeadID=new Set<Id>();
    
    // operationType 
    // 
   System.debug(Trigger.operationType);
   
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            
            
            
            
        }
        
        when AFTER_INSERT {
            
              for(Lead singleLead:trigger.new){
                system.debug(' trigger : '+ singleLead.id);
                SetLeadID.add(singleLead.id);
            }
            
            
             system.debug(' setof id  : '+ SetLeadID);
           LeadFuture.toUpperName(SetLeadID);
            
            
            
        }
        when BEFORE_UPDATE { }
        when AFTER_UPDATE {}
        
        
        when BEFORE_DELETE {}
        when AFTER_DELETE {}
        when AFTER_UNDELETE {}
        
    }
    
}*/