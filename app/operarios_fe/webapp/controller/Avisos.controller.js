sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("nsoperariosfe.operariosfe.controller.Avisos", {
        onInit() {

            
        },
        
        goToMain: function (){

            //alert("Hola");

            let oHistory = sap.ui.core.routing.History.getInstance();
            let sPreviousHash = oHistory.getPreviousHash();
            
            
            if (sPreviousHash !== undefined) {
                window.history.go(-1);
            } else {
                this.getOwnerComponent().getRouter().navTo("RouteMain", {}, true);
            }
            
        },

        onCreate: function(){

            alert("Hola");

        },

        onDelete: function(){

            alert("Hola");

        },

        onUpdate: function(){

            alert("Hola");

        }

    });
});