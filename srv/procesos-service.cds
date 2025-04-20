using {ns_operarios} from '../db/schema';
using { NorthWind as n } from './external/NorthWind';

service procesosService {

    //entity operariosSrv        as projection on ns_operarios.Operarios;
    //entity rondasSrv           as projection on ns_operarios.Rondas;
    //entity avisosSrv           as projection on ns_operarios.Avisos;
    entity OperarioToRondaSrv  as projection on ns_operarios.OperarioToRonda;
    entity OperarioToAvisosSrv as projection on ns_operarios.OperarioToAvisos;

}

service TestService {

    @readonly
    entity SupplierSrv as projection on n.Suppliers;
    

}

// se puede hacer un select
/*service  procesosService2 {

    entity operariosSrv as
        select from ns_operarios.Operarios{
        key ID ,
        Nombre,
        Apellidos

        }


}*/

// expresiones de ruta: se hace un filtro directamente en el campo
/*service MyService {

    entity operariosSrv as
        select from ns_operarios.Operarios[Nombre = 'JESUS']{
            key ID,
                Nombre,
                Apellidos
        }

}*/
