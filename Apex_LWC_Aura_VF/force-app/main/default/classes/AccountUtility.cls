public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];
        for(Account a:accountsList){
            String acctRev=(a.Name +':'+ a.AnnualRevenue);
            System.debug(acctRev);
        }
    }
}