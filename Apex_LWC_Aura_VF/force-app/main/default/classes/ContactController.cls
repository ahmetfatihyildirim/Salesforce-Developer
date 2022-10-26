public class ContactController {
    //properties
    
        
    //methods
    public List<Contact> getContacts(String titleContext){
        List<Contact> returnContact =[SELECT Id, FirstName, LastName, Name,
                                      Phone, Email, Title, AccountId 
                                      FROM Contact WHERE Title LIKE :titleContext];// variable binding
        return returnContact;
        
    }

}