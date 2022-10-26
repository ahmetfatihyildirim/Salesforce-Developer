public class horse {
    
    //properties
    public Integer age;
    public String name;
    public list<string> education=new List<String>();
    public String race;
    
    //methods
    public void eat(){
        system.debug('Horse is eating');
    }
    
    public void train(String traintype){
        system.debug(name + ' named horse is trained as ' + trainType);
        education.add(trainType);
    }
    public void setName(String horseName){
        name=horseName;
        system.debug('Horse named as ' + horseName);
    }

}