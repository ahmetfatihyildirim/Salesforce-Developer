@isTest
public class EmployeeLogInTest {
   
    @isTest
    public static void test1(){
                
        EmployeeLogIn login1=new EmployeeLogIn();
        String result=login1.login('Afy', 'clarusway');
        system.assertEquals('You logged in successfully', result);
    }
    
    @isTest
    public static void test2(){
                
        EmployeeLogIn login1=new EmployeeLogIn();
        String result=login1.login('AfY001', 'clarusway');
        system.assertEquals('You entered a wrong username', result);
    }
    @isTest
    public static void test3(){
                
        EmployeeLogIn login1=new EmployeeLogIn();
        String result=login1.login('Afy', 'clarusway11');
        system.assertEquals('You entered a wrong password', result);
    }
    
    @isTest
    public static void test4(){
                
        EmployeeLogIn login1=new EmployeeLogIn();
        String result=login1.login('Afy1', 'clarusway11');
        system.assertEquals('Your both password and username are wrong', result);
    }
     /*@isTest
    public static void test5(){
                
        
        String result=EmployeeLogIn.login('Afy1', 'clarusway11');
        system.assertEquals('Your both password and username are wrong', result);
    }*/
    
    

}