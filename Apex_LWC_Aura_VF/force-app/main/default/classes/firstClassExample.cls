public class firstClassExample {
    
    public static void createlist(Integer maxNum){
        List<String> studentlist = new List<String>();
        
        for(Integer studentNum=1; studentNum<=maxNum; studentNum++){
            studentlist.add('F-' + studentNum);
        }
        system.debug(studentList);
        system.debug(studentList.size());
    }

}