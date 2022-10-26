public class BMIcalculator {
    public static decimal calculateMetric(String fname, String lname, decimal height, decimal weight){
        String name=fname.toUpperCase()+' '+lname.toUpperCase();
        System.debug(name);
        //decimal bmimetric=weight/(height*height);
        //bmimetric=bmimetric.setScale(3);
        System.debug(weight/(height*height));
        return (weight/(height*height)).setscale(2);
    }
    public static decimal calculateLbs(String fname, String lname, decimal height, decimal weight){
        String name=fname.toUpperCase()+' '+lname.toUpperCase();
        System.debug(name);
        decimal bmiusc=703*weight/(height*height);
        bmiusc=bmiusc.setScale(3);
        System.debug(bmiusc);
        return bmiusc;
    }
    

}