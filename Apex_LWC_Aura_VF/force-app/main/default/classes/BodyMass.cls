public class BodyMass {
    //method
    public static Decimal calculateBMI(decimal kg, decimal ht){
        decimal result=kg/(ht*ht);
        return result.setscale(2);
    }
    public static String calculateBMI(String fname, String lname){
        String fullname=fname+' '+lname;
        fullname=fullname.toUpperCase();
        
        return fullname;
    }
    

}