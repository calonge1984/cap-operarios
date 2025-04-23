sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("nsoperariosfe.operariosfe.controller.Rondas", {
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
        onUpdate: function(){

            alert("Hola");

        }
    });
});