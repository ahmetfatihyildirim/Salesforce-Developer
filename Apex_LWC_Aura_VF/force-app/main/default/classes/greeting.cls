public class greeting {
    string firstname;
    string lastname;
    
    public string fullname(String name, String lname){
        firstname=name;
        lastname=lname;
        string fname= firstname+' '+ lastname;
        return fname;
    } 
    public string greeting(){
        string greeting = 'Hi';
        string greet = greeting + ' ' + firstname +' '+ lastname;
        return greet;
        
    }
    public void greetingall(List<String> namelist){
        for (string hello : namelist) {
            system.debug('Hi '+ hello);
        }
    }
    public void greetingallbutlast(List<String> namelist){
        for (string test1 : namelist) {
            system.debug('Hi ' + test1.split(' ')[0]);
        }
    } 
    public void greetingtoSmith(List<String> namelist){
        for (string test2 : namelist) {
            string test3= test2.split(' ')[0];
            if (test3 == 'Smith'){
                system.debug('Hi ' + test2.split(' ')[0]);
            } else {}
        }
    }
}