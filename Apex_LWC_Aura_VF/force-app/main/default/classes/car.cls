public class car {
    
    public static String brand;
    public static String model;
    public static String engine;
    public static String bodytype;
    public static List<String> modifies = new List<String>();
    public static Integer score;
    public static Integer cost;
    public static Integer wallet;
    
    
    
    public static void upgrade(){
        score+=5;
        cost+=250;
        system.debug(brand + ' ' + model + 'is upgraded ' + ' score is ' + score);
        system.debug('Your debt is '+cost);
    }
    
    public static void maintanence(Boolean done){
        If (True){
            score+=2;
			cost+=150;            
        } else{
            score-=2;
        }
        system.debug(brand + ' ' + model + '\'s score is ' + score);
        system.debug('Your debt is '+cost);
    }
    
    public static void crash(String Size){
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
    
    public static void pay(Integer payment){
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
    
    public static void load(Integer money){
        wallet+=money;
    }
    

}