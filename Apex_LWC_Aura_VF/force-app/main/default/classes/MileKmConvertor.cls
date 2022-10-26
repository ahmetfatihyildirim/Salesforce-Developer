public class MileKmConvertor {
    
    public static decimal convertmile(decimal mile){
        decimal kmresult=mile*1.6;
        system.debug(mile+' mile is '+kmresult+' kilometer.');
        return kmresult;
    }
    public static decimal convertkm(decimal kilometer){
        decimal mileresult=kilometer*0.625;
        system.debug(kilometer+' kilometer is '+mileresult+' mile.');
        return mileresult;
    }

}