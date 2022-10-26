({
	sum : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        var res=component.get("v.result");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result",parseFloat(num1)+parseFloat(num2));
        console.log(res);
       
	},
    
    	sub : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        var res=component.get("v.result");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result",parseFloat(num1)-parseFloat(num2));
        console.log(res);
      	
	},
    	mul : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        var res=component.get("v.result");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result",parseFloat(num1)*parseFloat(num2));
        console.log(res);
       
	},
    	div : function(component, event, helper) {
        
        var num1=component.get("v.numx");
        var num2=component.get("v.numy");
        var res=component.get("v.result");
        
        console.log(num1);
        console.log(num2);
        
        component.set("v.result",parseFloat(num1)/parseFloat(num2));
        console.log(res);
       
	},

})