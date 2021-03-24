({        
     fetchData : function(component, event, helper) {
         component.set('v.mycolumn', [
             {label: 'Name', fieldName: 'Name', type: 'text'},
             {label: 'BillingState', fieldName: 'BillingState', type: 'Text'},
             {label: 'BillingCity', fieldName: 'BillingCity', type: 'text'},
             {label: 'Phone', fieldName: 'Phone', type: 'text'}            
         ]);
         var action = component.get("c.getAccounts");
         action.setCallback(this, function(response){
             component.set("v.ListAccounts", response.getReturnValue());
         });
         $A.enqueueAction(action);
     },
 })