public class grading {
    
    //public Integer score;
    
    public static void calculate(Integer studentScore){
        If(studentScore>=90){
            System.debug('A');
        }else if(studentScore>=80){
            System.debug('B');
        }else if(studentScore>=70){
            System.debug('C');
        }else if(studentScore>=60){
            System.debug('D');
        }else if(studentScore>=50){
            System.debug('E');
        }else{
            System.debug('F');
        }
        
    }

}