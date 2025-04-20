using {ns_operarios} from '../db/schema';

service procesosService {

    //entity operariosSrv        as projection on ns_operarios.Operarios;
    //entity rondasSrv           as projection on ns_operarios.Rondas;
    //entity avisosSrv           as projection on ns_operarios.Avisos;
    entity OperarioToRondaSrv  as projection on ns_operarios.OperarioToRonda;
    entity OperarioToAvisosSrv as projection on ns_operarios.OperarioToAvisos;

}
