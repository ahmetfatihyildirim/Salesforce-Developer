public class createAccWCont {
    
    public void create(String accountName, String fname, String lname){
        Account singleAcc= new Account(name=accountName);
        insert singleAcc;
        
        Contact singleCon=new Contact(firstname=fname, lastname=lname, accountid=singleAcc.id);
        insert singleCon;
    }

}