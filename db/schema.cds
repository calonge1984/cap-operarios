namespace ns_operarios;

using { cuid, managed } from '@sap/cds/common';


type Estados : String enum {

       Realizada;
       Pendiente;
}

type Acciones: String enum {

        Enviada;
        Pendiente;
        Error;

}


entity Operarios : cuid, managed {

        Nombre    : String;
        Apellidos : String;

}

entity Rondas : cuid, managed {

        operario   : Association to Operarios;
        Imagen     : String;
        Estado     : Estados;

}

entity Avisos : cuid, managed {

        operario : Association to Operarios;
        Texto    : String;
        Estado   : Estados;

}


entity Logs : cuid, managed {

        operario : Association to Operarios;
        

}
