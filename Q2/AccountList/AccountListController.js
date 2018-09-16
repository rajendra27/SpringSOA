({
	doInit : function(component, event, helper) {
        
        var initiliseDataAction = component.get("c.getAccount");
        initiliseDataAction.setCallback(this, function(response) {
            if(response.getState() === 'SUCCESS'){
                component.set("v.data", response.getReturnValue());
            }else{
                console.log("response.status---> " + response.status);
            }
        });
        $A.enqueueAction(initiliseDataAction);
	}
})