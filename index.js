var finalhandler = require('finalhandler'),
        http = require('http'),
        Router = require('router'),
        sinespProcurados = require("./modules/serpro/sinesp/procurados");

var router = Router();

router.get('/sinesp/procurado', sinespProcurados("./modules/serpro/sinesp/templates/procurado.tpl"));
router.get('/sinesp/mandado', sinespProcurados("./modules/serpro/sinesp/templates/mandado.tpl"));

var server = http.createServer(function (req, res) {
    router(req, res, finalhandler(req, res));
});

server.listen(3000);