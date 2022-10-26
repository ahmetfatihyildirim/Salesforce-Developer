public class firstvfApex {
   
        // property
        public String helloMsg {get;set;}
        public Decimal result {get;set;}
        public Integer num1 {get;set;}
        public Integer num2 {get;set;}
        
       
        //method
         public firstvfApex(ApexPages.StandardController controller) {
            result =0; 
            num1=0;
            num2=0;
            helloMsg='Calculation Result : ';
            System.debug('Constructor method is working ');
        }
       
      
    public PageReference sum() {
           result=num1+num2;
           ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Your Result : '+result);
           ApexPages.addMessage(myMsg);
       
        String requestURL =ApexPages.currentPage().getUrl();
    
        PageReference newRequestURL = new PageReference(requestURL);
        newRequestURL.setRedirect(true);
        return newRequestURL;
       
       
      
    }
    
     public PageReference sub() {
       result=num1-num2;
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Your Result : '+result);
       ApexPages.addMessage(myMsg);
        String requestURL =ApexPages.currentPage().getUrl();
    
        PageReference newRequestURL = new PageReference(requestURL);
        newRequestURL.setRedirect(true);
        return newRequestURL;
    }
    public PageReference mul() {
       result=num1*num2;
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Your Result : '+result);
       ApexPages.addMessage(myMsg);
         String requestURL =ApexPages.currentPage().getUrl();
    
        PageReference newRequestURL = new PageReference(requestURL);
        newRequestURL.setRedirect(true);
        return newRequestURL;
    }
    public PageReference div() {
       
       
       try{
           result=Decimal.valueOf(num1)/Decimal.valueOf(num2);
       } catch(Exception e) {
       
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Error: Invalid Input.'+e.getMessage());
       ApexPages.addMessage(myMsg);
       
       }
       
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Your Result : '+result);
       ApexPages.addMessage(myMsg);
       
       
       
        String requestURL =ApexPages.currentPage().getUrl();
    
        PageReference newRequestURL = new PageReference(requestURL);
        newRequestURL.setRedirect(true);
        return newRequestURL;
    }
}