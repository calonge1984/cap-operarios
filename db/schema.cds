namespace ns_operarios;

using { cuid, managed } from '@sap/cds/common';


entity Operarios : cuid, managed {

        Nombre    : String;
        Apellidos : String;

}

entity Rondas : cuid, managed {

        operario   : Association to Operarios;
        Imagen     : String;
        Estado     : String;

}

entity Avisos : cuid, managed {

        operario : Association to Operarios;
        Texto    : String;
        Fecha    : DateTime;
        Estado   : String;

}


entity Logs : cuid, managed {
    
        operario : Association to Operarios;

}
