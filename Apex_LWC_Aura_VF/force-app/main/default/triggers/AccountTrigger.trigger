trigger AccountTrigger on Account (before insert, after insert, before update,
                                   after update,before delete,after delete, after undelete) {
    
    switch on Trigger.operationType{
        
        when BEFORE_INSERT {
            AccountTriggerHelper triggerHelper=new AccountTriggerHelper();
            triggerHelper.nameUpdate(trigger.new);
            triggerHelper.validation(trigger.new);
            
        }
        when AFTER_INSERT {
            
        }
        when BEFORE_UPDATE {
            
        }
        when AFTER_UPDATE {
            
        }
        when BEFORE_DELETE {
            
        }
        when AFTER_DELETE {
            
        }
        when AFTER_UNDELETE {
            
        }
        
    }
    
    
    
}