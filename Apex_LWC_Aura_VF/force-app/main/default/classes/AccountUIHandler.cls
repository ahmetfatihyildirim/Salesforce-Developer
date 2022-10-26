public class AccountUIHandler {
    @auraEnabled
    public static String create(String accountName){
        
        String returnText;
        
        Account singleAcc = New Account(Name=accountName);
        
        try{
            
             insert singleAcc;
            returnText='Account Created with '+singleAcc.id ;
            
        }catch(Exception e){
            returnText=e.getMessage();
        }
        
        
    return returnText;
        
    }
}