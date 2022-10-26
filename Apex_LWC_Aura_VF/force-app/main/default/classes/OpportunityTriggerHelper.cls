public class OpportunityTriggerHelper {
    
    public void preventStageBack(Map<Id,Opportunity> oldMap, List<Opportunity> triggerNew){
        
        
        List<String> stageList  = New List<String>{
            'Prospecting','Qualification','Needs Analysis','Value Proposition',
                'Id. Decision Makers','Perception Analysis','Proposal/Price Quote',
                'Negotiation/Review','Closed Won','Closed Lost'
                };
                    
                    
                    for(Opportunity op:triggerNew){
                        
                        Integer oldindex = stageList.indexOf(oldMap.get(op.id).stageName);
                        Integer newindex = stageList.indexOf(op.stageName);
                        
                        Profile p=[SELECT id, name FROM Profile WHERE name='System Administrator' LIMIT 1];
                        
                        Id Userid=System.UserInfo.getProfileId();
                        
                        if(userid==p.id){//Admin
                            if(oldindex==8  || oldindex==9 ){
                                //autorised
                            }else{
                                if(newindex<oldindex){
                                    op.stageName.addError('You are not authorized to come back opportunity Stage');
                                }
                                
                            }
                            
                        }else if(newindex<oldindex){// Not Admin
                            
                            op.stageName.addError('You are not authorized to come back opportunity Stage');
                        }

                        System.debug('Opportunity Stage Old Value : '+ oldMap.get(op.id).stageName);      // trigger.oldMap
                        
                        System.debug('Opportunity Stage Old index : '+ oldindex);      // trigger.oldMap
                        
                        
                        system.debug('Opportunity Stage new : ' + op.stageName);
                        system.debug('Opportunity Stage  New Index : ' + newindex);
                        
                        // prevent opportunity stage back
                        
                        
                    }
        
    }
    
    
    
}