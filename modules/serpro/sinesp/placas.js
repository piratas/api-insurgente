var request = require('request'),
        mustache = require('mustache'),
        _ = require('underscore'),
        url = require('url'),
        Mustache = require('mustache'),
        fs = require('fs');

module.exports = function (req, res) {

    var placa = url.parse(req.url, true).query.placa,
            crypto = require("crypto"),
            hmac = crypto.createHmac('sha1', placa + "7lYS859X6fhB5Ow");

    hmac.setEncoding('hex');
    hmac.write(placa);
    hmac.end();

    request.post({
        rejectUnauthorized: false,
        url: 'https://sinespcidadao.sinesp.gov.br/sinesp-cidadao/ConsultaPlacaNovo02102014',
        body: Mustache.render(fs.readFileSync(__dirname + "/templates/placa.tpl").toString(), {
            token: hmac.read(),
            placa: placa
        })
    }, function (err, httpResponse, body) {
        res.statusCode = httpResponse.statusCode;
        res.setHeader("Content-Type", "text/xml");
        res.end(body);
    });

};

/**
 * Não importa quantas vezes tentarem cercear a informação, nós vamos atrás.
 */
