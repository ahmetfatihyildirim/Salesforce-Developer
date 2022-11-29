public class ContactSearch {
    
    public static List<Contact> searchForContacts(String a, String b){
        List<Contact> conList=
            [SELECT ID, Name FROM Contact WHERE (lastName=:a and MailingPostalCode=:b)];
           
        return conList;
    }

}