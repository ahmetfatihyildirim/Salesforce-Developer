public class AccountTriggerHelper {
    
    public void nameUpdate(List<Account> multiAcc){
        for(Account singleacc:multiAcc){
            singleAcc.name= singleAcc.name.toUpperCase();
        }
    }
    
    public void validation(List<Account> multiAcc){
        
        for(Account singleacc:multiAcc){
            
            if(String.isblank(singleAcc.phone)){
                singleAcc.Phone.addError('Phone field must be filled');
                //singleAcc.addError('Phone field must be filled');//---genel bir hata gibi verir.
            }
        } 
    }

}