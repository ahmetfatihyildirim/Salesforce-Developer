public class HealthCare {
    public static String firstName;
    public static String lastName;
    public static Date dob;
    public static String nin;
    
    
    public static void setfName(String fname){
        firstName=fname;
    }
    public static void setlName(String lname){
        lastName=lname;
    }
    public static void setDob(date birth){
        dob=birth;
    }
    public static void setNin(String IdNum){
        nin=IdNum;
    }
    public static contact newcon(){
        contact newcon= new Contact(FirstName=firstName, LastName=lastName, Birthdate=dob, NIN__c=nin);
        insert newcon;
        return newcon;
    }
}