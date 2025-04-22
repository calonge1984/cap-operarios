using procesosService from './procesos-service';

/*annotate procesosService.operariosSrv with @(

UI.LineItem: [{
  $Type : 'UI.DataFieldForAction',
  Action: 'callRondas',
  Label : 'Llamar Servicio 1'
}

]

);*/


annotate procesosService.OperarioToRondaSrv with @(UI.LineItem: [{
  $Type : 'UI.DataFieldForAction',
  Action: 'callRondas',
  Label : 'Llamar Servicio 1'
}]);


annotate procesosService.OperarioToAvisosSrv with @(UI.LineItem: [{
  $Type : 'UI.DataFieldForAction',
  Action: 'callAvisos',
  Label : 'Llamar Servicio 2'
}]);
