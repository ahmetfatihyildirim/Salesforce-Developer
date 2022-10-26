({
    calculate : function(component, event, helper) {
        
        console.log('Butona basıldı....');
        
       var num1=component.get("v.numX");
       var num2=component.get("v.numY");
        
        console.log('Number 1 : '+ num1); 
        console.log('Number 2 : '+ num2); 
        
       component.set("v.result",num1+num2);
        
       var result = component.get("v.result");
        
       console.log(result);
      
        
    }
})