<v:Envelope xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:d="http://www.w3.org/2001/XMLSchema" xmlns:c="http://schemas.xmlsoap.org/soap/encoding/" xmlns:v="http://schemas.xmlsoap.org/soap/envelope/">
    <v:Header>
        <plataforma>Android</plataforma>
        <ip>192.168.0.1</ip>
        <latitude>-13.74542308</latitude>
        <longitude>-25.4030249</longitude>
    </v:Header>
    <v:Body>
        <n0:getMandados xmlns:n0="http://mandado.service.sinesp.serpro.gov.br/">
            {{#nome}}<nome>{{nome}}</nome>{{/nome}}
            {{#genitora}}<genitora>{{genitora}}</genitora>{{/genitora}}
            {{#numero}}<numero>{{numero}}</numero>{{/numero}}
            {{#documento}}<documento>{{documento}}</documento>{{/documento}}
        </n0:getMandados>
    </v:Body>
</v:Envelope>