module.exports = (srv) => {

    srv.on('callAvisos', async (req) => {
      const { AvisoID } = req.data;
      // Lógica de backend, por ejemplo:
      return `Aviso: ${AvisoID}`;
    });



    srv.on('callRondas', async (req) => {
      const { RondasID } = req.data;
      // Lógica de backend, por ejemplo:
      return `Rondas: ${RondasID}`;
    });

    /*srv.on('callOperarios', async (req) => {
      const { OperariosID } = req.data;
      // Lógica de backend, por ejemplo:
      return `Operarios: ${OperariosID}`;
    });*/
    


  };
  