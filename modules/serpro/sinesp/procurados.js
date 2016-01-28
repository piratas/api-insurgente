/* global module */

var request = require('request'),
        mustache = require('mustache'),
        _ = require('underscore'),
        url = require('url'),
        Mustache = require('mustache'),
        fs = require('fs');

module.exports = function (templatePath) {
    return function (req, res) {
        request.post({
            url: 'http://sinespcidadao.sinesp.gov.br/mandado/MandadoServiceFonetica',
            body: Mustache.render(fs.readFileSync(templatePath).toString(), url.parse(req.url, true).query)
        }, function (err, httpResponse, body) {
            res.statusCode = httpResponse.statusCode;
            for (var i in httpResponse.headers) {
                if (!i in ["content-type"]) {
                    continue;
                }
                res.setHeader(i, httpResponse.headers[i]);
            }
            res.end(body);
        });
    };
};