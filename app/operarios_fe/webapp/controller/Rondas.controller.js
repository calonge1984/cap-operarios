sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/model/Sorter",
    "sap/m/MessageToast",
    "sap/m/MessageBox"
], (Controller,JSONModel, Filter, FilterOperator, Sorter, MessageToast, MessageBox) => {
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