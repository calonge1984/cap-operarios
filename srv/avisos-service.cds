using { ns_operarios } from '../db/schema';

service avisosService {

    entity avisossSrv as projection on ns_operarios.Avisos;

}
