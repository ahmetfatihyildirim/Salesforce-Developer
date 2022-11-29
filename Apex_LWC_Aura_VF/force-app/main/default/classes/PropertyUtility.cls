public class PropertyUtility {
    public static void newListedProperties(){
        List<Property__c> newPropList= new List<Property__c>();
        newPropList=[SELECT name, broker__r.email__c, Days_On_Market__c FROM Property__c WHERE Days_On_Market__c <= 30];
        
        
        for(Property__c a:newPropList){
            String propEmail=(a.name +':'+ a.broker__r.email__c);
            system.debug(propEmail);
        }
    }
}