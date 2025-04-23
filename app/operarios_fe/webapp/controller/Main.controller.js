sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("nsoperariosfe.operariosfe.controller.Main", {

        onInit() {

        },

        goRondas: function () {

            this.getOwnerComponent().getRouter().navTo("RouteRondas");


            //alert("estamos en rondas");

        },

        goAvisos: function () {

            this.getOwnerComponent().getRouter().navTo("RouteAvisos");


            //alert("estamos en avisos");

        },

    });
});