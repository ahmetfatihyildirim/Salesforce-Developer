public class EmployeeLogIn {
    
    public String login(String username1, String password1){
        String username='Afy';
        String password='clarusway';
    	String message;
        
        if(username1==username && password1==password){
            message='You logged in successfully';
        }else if(username1==username && password1<>password){
            message='You entered a wrong password';
        }else if(username1<>username && password1==password){
            message='You entered a wrong username';
        }else{
            message='Your both password and username are wrong';
        }
        return message;
    }

}