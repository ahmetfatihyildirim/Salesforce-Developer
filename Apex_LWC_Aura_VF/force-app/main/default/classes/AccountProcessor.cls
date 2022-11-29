public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIds){
        List<Account> accList=[Select Id, Name from Account Where Id IN:accountIds];
        List<Account> accNewList=new List<Account>();
        
        for(Account a:accList){
            List<Contact> cons = [Select Id from Contact Where AccountId=:a.Id];
            Integer num=cons.size();
            a.Number_Of_Contacts__c=num;
            accNewList.add(a);
        }
                       
    }

}