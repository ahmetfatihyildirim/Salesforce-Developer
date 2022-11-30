public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        List<String> sl=new List<String>();
        for(Integer i=0; i<n; i++){
            sl.add('Test '+i);  
            system.debug(sl[i]);
        }
        return sl;           
    }    
}