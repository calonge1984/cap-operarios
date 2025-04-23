namespace ns_operarios;

// context --> agrupar por secciones
// using   --> para importar otro modulos

using {
        cuid,
        managed
} from '@sap/cds/common';


type Estados  : String enum {

        Pendiente;
        Finalizado;
        
}

type Acciones : String enum {

        Enviada;
        Pendiente;
        Error;

}

// localized -> se añade para las traducciones

entity Rondas : cuid, managed {

        Imagen   : String;
        Texto    : localized String;
        Estado   : localized Estados;
        Operario : Association to Operarios;

}

entity Avisos : cuid, managed {

        Texto    : localized String;
        Estado   : localized Estados;
        Operario : Association to Operarios;
}


entity Operarios : cuid, managed {

        Nombre    : String;
        Apellidos : String;
        ToRondas  : Composition of many Rondas on ToRondas.Operario = $self;
        ToAvisos  : Composition of many Avisos on ToAvisos.Operario = $self;
}

entity Logs : cuid, managed {
        Operario : Association to Operarios;

}

//vistas y proyecciones

entity OperarioToRonda  as
        select from Operarios as o
        inner join Rondas     as r
                on o.ID = r.Operario.ID
        {
                key o.ID as OperarioID,
                o.Nombre, 
                o.Apellidos, 
                r.ID as RondaID,
                r.Imagen,
                r.Texto,
                r.Estado
        };


entity OperarioToAvisos as 
        select from Operarios as o
        inner join Avisos as a
                on o.ID = a.Operario.ID
        {       
                key o.ID as OperarioID,
                o.Nombre,
                o.Apellidos,
                a.ID as AvisoID,
                a.Texto,
                a.Estado

        };

