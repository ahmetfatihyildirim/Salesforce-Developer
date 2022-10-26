public class TTDescriptionChange {
    public static void TTaccDescChange() {
        //get All Accounts
        List<Account> accs=[SELECT Description FROM Account];
        List<Account> newAcc = new List<Account>();
        for (Account a: accs) {
            a.Description='Changed';
            newAcc.add(a);
            
        }
        update newAcc;
}
}