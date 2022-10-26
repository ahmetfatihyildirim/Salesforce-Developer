public class MakeCoursePlan {
        
    public static List<String> MakeCoursePlan(Integer n){
        List<String> plan=new List<String>();
        System.debug('Constructor is working...');
        for(Integer i=1; i<=n; i++){
            if(i==6 || i==7){
                plan.add('Weekend...');
                continue;
                
            }else if(i==13){
                break;
                
            }else{
                plan.add(i+'.day of Flow Course Plan');
                
            }
            
        }
        
        return plan;
        
    }
    
}