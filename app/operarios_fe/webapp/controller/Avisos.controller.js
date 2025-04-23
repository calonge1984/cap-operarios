sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/model/Sorter",
    "sap/m/MessageToast",
    "sap/m/MessageBox"

], (Controller, JSONModel, Filter, FilterOperator, Sorter, MessageToast, MessageBox) => {
    "use strict";

    return Controller.extend("nsoperariosfe.operariosfe.controller.Avisos", {

        _loadViewModel: function () {

            const oViewModel = new JSONModel({
                busy: false,
                hasUIChanges: false,
                productEmpty: false,
                order: 0
            });

            this.getView().setModel(oViewModel, "viewModel");

        },

        _loadFilters: function(){

            const oViewModel = new JSONModel({
                Avisos: "",
                Estado: ""
            });

            this.getView().setModel(oViewModel, "filters");

        },

        onInit() {

            /*this._oAvisosTable = this.getView().byID("avisosTable");
            this._loadViewModel();
            this._loadViewFilters();*/
            
        },

        onSearch: function(){
            
            let oView  = this.getView();
            let oModel = oView.getModel("filters");
            let sAvisos = oView.getModel("/Avisos");
            let sEstado = oView.getModel("/Estado");
            let aFilters = [];

            if (sAvisos) {
                aFilters.push(new Filter("ID", FilterOperator.contains, sAvisos));
            }

            this._oAvisosTable.getBinding("items").filter(aFilters);

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