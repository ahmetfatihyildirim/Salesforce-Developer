public class findSearch {
    
    private List<Lead> listlead;
    private List<Account> listacc;
    private List<Contact> listcon;
    private List<Opportunity> listopp;
    
    //method
    public List<Lead> getlistlead(){
        return listlead;
    }
    public List<Account> getlistacc(){
        return listacc;
    }
    public List<Contact> getlistcon(){
        return listcon;
    }
    public List<Opportunity>getlistopp(){
        return listopp;
    }
    //constructor
    public findSearch(){
        listlead=new List<Lead>();
        listacc=new List<Account>(); 
        listcon=new List<Contact>();
        listopp=new List<Opportunity>();
    }
    
    public void search(String searchTerm, String field){
        System.debug(searchTerm+' is Searching from the Lead, Account, Contact, Opportynity');
        
        List<List<sObject>> listOfSearch=new  List<List<sObject>>();
        
        if(field.toUpperCase()=='ALL'){
            listOfSearch=[FIND :searchTerm IN ALL FIELDS RETURNING 
                          Lead(Id, Name), Account (Id, Name),
                          Contact(Id, Name),Opportunity(Id, Name)];
        }else if(field.toUppercase()=='NAME'){
            listOfSearch=[FIND :searchTerm IN NAME FIELDS RETURNING 
                          Lead(Id, Name), Account (Id, Name),
                          Contact(Id, Name),Opportunity(Id, Name)];
        }else if(field.toUppercase()=='EMAIL'){
            listOfSearch=[FIND :searchTerm IN EMAIL FIELDS RETURNING 
                          Lead(Id, Name), Account (Id, Name),
                          Contact(Id, Name),Opportunity(Id, Name)];
        }
        
        
        listlead=listOfSearch.get(0);
        listacc=listOfSearch.get(1);
        listcon=listOfSearch.get(2);
        listopp=listOfSearch.get(3);
        
        /*
        System.debug('Lead------------');
        for(Lead lea:listlead){
            system.debug(lea.name);
        }
        System.debug('Accounts-----------');
        for(Account acc:listacc){
            System.debug(acc.name);
        }
        System.debug('Contacts------------');
        for(Contact cons:listcon){
            system.debug(cons.name);
        }
        System.debug('Opportunity------------');
        for(Opportunity opp:listopp){
            system.debug(opp.name);
        }*/
        
    }
    
}