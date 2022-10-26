({
    createAcc : function(component, event, helper) {
        
        var accName = component.get("v.accName");
        
        var serverController = component.get("c.create");
        
        // setparams parametreleri JSON formatında göndereceğim.. 
        
        serverController.setParams({
            "accountName":accName
        });
        
        // setcallback geriye dönen verileri oku.
        
        serverController.setCallback(this,function(response){
            var state = response.getState();
            console.log(response);
            
            if(state=='SUCCESS'){
                var responseVal = response.getReturnValue();
                component.set("v.message", responseVal);
            } else {
                var errorMessage = response.getError()[0];
                component.set("v.message", errorMessage);
            }
            
            
            
        });
        
        
        // run....
        
        $A.enqueueAction(serverController);
        
        
    }
})