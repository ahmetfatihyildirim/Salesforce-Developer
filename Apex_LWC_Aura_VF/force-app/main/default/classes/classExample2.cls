public class classExample2 {
    
     public static void createlist(String cohortCode, Integer maxNum){ 
         // static kelimesi çıkarılırsa doğrudan class ismini yazarak çağıramayız.
         // bu şekilde çağırmak için duplicate etmemiz lazım. O da;
         // classExamplpe2 exp1 = classExample2();
         // exp1.createlist('Duplicate Class- ',4) ===> şeklinde duplicate etmiş halde çalıştırabiliriz.
         
        List<String> studentlist = new List<String>();
        
        for(Integer studentNum=1; studentNum<=maxNum; studentNum++){
            studentlist.add(cohortCode + studentNum);
        }
        system.debug(studentList);
        system.debug(studentList.size());
    }

}