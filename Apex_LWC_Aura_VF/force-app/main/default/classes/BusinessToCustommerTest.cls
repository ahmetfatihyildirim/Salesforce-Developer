@isTest
public class BusinessToCustommerTest {  // TEST --------------------- 
    
    @TestSetup  // birden fazla test methodunda kullanmak için kullanılacak bir hazırlık ise bu test setup kullanılır.
    public static void setup() {
        BusinessToCustommer b2c = New BusinessToCustommer();
        
        List<String> listOfCustomerTEST = New List<String>{
            'Arancha Maria Gorrido Espinoza',
            'Haşim Ahmet Abdulbaki Buğra Bahadır Nebioğulları',
            'Alex Victor',
            'Muhammet Çağrı İslam Kılıç',
            'Sergio Taco'};
                    
            b2c.create(listOfCustomerTEST);  
        
        
        
        
        
        
        
        
        
        
        
        
        
        /*List<String> testAccCon = New List<String>{  // burda string yaparak sanki bize bir excell dosyası ile
//data verilmiş gibi liste oluşturuyoruz. Sonra bu listeyi kod clasına veri olarak atıca orda 
////gerekli işlemler yapılıyor. Çıkan veriyi de aşağıdaki test methodları ile test ediyoruz.
'Selcuk Goktas',
'Ahmet Emin Algıç',
'Gökhan Aydın'
};

BusinessToCustommer b2c = New BusinessToCustommer();

b2c.create(testAccCon);*/
        
    }

/*
    @isTest
    public static void createTest1(){
        List<Account> testAccs = [SELECT id, Name FROM Account];
        List<String> accNames = New List<String>();
        List<String> accids = New List<String>();



        for (Account acc:testAccs){
            accNames.add(acc.name);
            accids.add(acc.id);

        }

        List<Contact> testCons = [SELECT id, name,accountid FROM Contact];

        for(Contact tcon:testCons){
            Boolean Name_check=accNames.contains(tcon.name);
            
            Boolean accountid_check=accids.contains(tcon.accountid);

            System.assertEquals(true, Name_check);
        
            System.assertEquals(true, accountid_check);

        }

      
        
    }*/
    
        @isTest
        public static void create2ParamsTest1(){
            
            List<Contact> multiAccConTest =[SELECT id, Account.id, Account.name, name, firstName,lastName,Accountid FROM Contact];   // child to parent 
            
            
            for(Contact singleTest:multiAccConTest){
                System.assertEquals(singleTest.Account.id, singleTest.Accountid);
                System.assertEquals(singleTest.Account.name, singleTest.name);
            }
            
        }
       
    }