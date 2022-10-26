public class Area {
    
    public static Decimal square(Decimal a, Decimal b){
        Decimal c=a*b;
   		system.debug(c);
    	return c;
    }
    public static Decimal circle(Decimal a){
        Decimal pi=3.14;
        Decimal c=a*a*pi;
   		system.debug(c);
    	return c;
    }
}