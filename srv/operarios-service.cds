using { ns_operarios } from '../db/schema';


//definicion
//exponemos el servicio

service OperariosService {

    entity OperariosSrv as projection on ns_operarios.Operarios;

}