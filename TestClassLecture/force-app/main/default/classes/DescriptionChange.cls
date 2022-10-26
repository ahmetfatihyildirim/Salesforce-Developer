public class DescriptionChange {
    
    public static void accDescChange() {

        //get all Acoounts
        List<Account> accs=[SELECT Description FROM Account];
        List<Account> newAcc=new List<Account>();

        for(Account a:accs){
            a.Description='Changed';
            newAcc.add(a);

        }
        update newAcc;
    }
}
