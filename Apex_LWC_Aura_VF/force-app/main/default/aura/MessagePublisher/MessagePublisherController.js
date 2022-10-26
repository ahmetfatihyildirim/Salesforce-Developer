({
    send : function(component, event, helper) {
        var msg=component.get("v.message");
        console.log(msg);

        var payload={
            recordId:msg,
            recordData:'No record Data'

        }
        component.find("mc").publish(payload);

    }
})