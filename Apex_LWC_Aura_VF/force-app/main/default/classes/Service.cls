public class Service {
    
    public  String brand;
    public  String model;
    public  String engine;
    public  String bodytype;
    public  List<String> modifies = new List<String>();
    public  Integer score;
    public  Integer cost;
    public  Integer wallet;
    
    
    
    public  void upgrade(){
        score+=5;
        cost+=250;
        system.debug(brand + ' ' + model + 'is upgraded ' + ' score is ' + score);
        system.debug('Your debt is '+cost);
    }
    
    public  void maintanence(Boolean done){
        If (True){
            score+=2;
			cost+=150;            
        } else{
            score-=2;
        }
        system.debug(brand + ' ' + model + '\'s score is ' + score);
        system.debug('Your debt is '+cost);
    }
    
    public  void crash(String Size){
        If(Size =='small'){
            score-=1;
            cost+=50;
        }else if(size == 'medium'){
            score-=2;
            cost+=250;
        }else if(size == 'big'){
            score-=5;
            cost+=500;
        }else{
            score=score;
        }
        system.debug(brand + ' ' + model + '\'s score is ' + score);
        system.debug('Your debt is '+cost);
    }
    
    public  void pay(Integer payment){
        If(wallet>cost){
            wallet -= payment;
            system.debug('Total Cost is '+cost+' , you paid '+payment);
			cost -= payment;          
        }else{
            system.debug('You don\'t have enough money to get repaired or upgraded.');
        }
        System.debug('Your left money: '+wallet);
        System.debug('Your left cost: '+cost);
    }
    
    public  void load(Integer money){
        wallet+=money;
    }

}