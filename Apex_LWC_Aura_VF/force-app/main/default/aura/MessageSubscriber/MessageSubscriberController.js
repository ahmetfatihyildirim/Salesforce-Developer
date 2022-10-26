({
    handleChanged : function(component, message, helper) {
       
        if(message!=null && message.getParam("recordId")!=null){
            var receivedMsg = message.getParam("recordId");
            message.getParam("recordData");
            component.set("v.ReceivedMessage",receivedMsg);
        }
    }
})