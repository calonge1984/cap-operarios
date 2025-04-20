using {ns_operarios} from '../db/schema';

service rondasService {

    entity rondasSrv as projection on ns_operarios.Rondas;

}
