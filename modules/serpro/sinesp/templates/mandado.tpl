<v:Envelope xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:d="http://www.w3.org/2001/XMLSchema" xmlns:c="http://schemas.xmlsoap.org/soap/encoding/" xmlns:v="http://schemas.xmlsoap.org/soap/envelope/">
    <v:Header>
        <idLog>{{idLog}}</idLog>
    </v:Header>
    <v:Body>
        <n0:getDetalhamentoMandado xmlns:n0="http://mandado.service.sinesp.serpro.gov.br/">
            <numeroMandado>{{numeroMandado}}</numeroMandado>
        </n0:getDetalhamentoMandado>
    </v:Body>
</v:Envelope>