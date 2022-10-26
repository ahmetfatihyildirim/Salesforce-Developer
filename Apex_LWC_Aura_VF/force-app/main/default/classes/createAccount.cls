public class createAccount {
    
    public String accName {set; get;}
    public String phone {set; get;}
    public String fname {set; get;}
    public String lname {set; get;}
    
    public PageReference save(){
        Account acc=new Account();
        acc.Name=accName;
        acc.Phone=phone;
        insert acc;
        
        Contact con=new Contact();
        con.FirstName=fname;
        con.LastName=lname;
        con.AccountId=acc.Id;
        insert con;
        
        refresh();
        
        return null;
    }
    public PageReference refresh(){
        accName=null;
        phone=null;
        fname=null;
        lname=null;
        
        return null;
    }
}