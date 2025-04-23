using {ns_operarios} from '../db/schema';
//using { NorthWind as n } from './external/NorthWind';

service procesosService {

    /*entity operariosSrv        as projection on ns_operarios.Operarios;
    action callOperarios(this : operariosSrv)  returns String;*/

    entity rondasSrv           as projection on ns_operarios.Rondas;
    //action callRondas(this : rondasSrv)  returns String;*/
    //entity avisosSrv           as projection on ns_operarios.Avisos;

    entity OperarioToRondaSrv  as projection on ns_operarios.OperarioToRonda;
    action callRondas(this : OperarioToRondaSrv)  returns String;


    entity OperarioToAvisosSrv as projection on ns_operarios.OperarioToAvisos;
    action callAvisos(this : OperarioToAvisosSrv) returns String;


entity EstadosSRV as 
  select from ns_operarios.Rondas {
    key  Estado as ID,
         Estado
  } group by Estado;


}

/*service TestService {

    @readonly
    entity SupplierSrv as projection on n.Suppliers;


}*/

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
