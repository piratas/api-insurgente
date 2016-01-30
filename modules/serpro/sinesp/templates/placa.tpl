<v:Envelope xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:d="http://www.w3.org/2001/XMLSchema" xmlns:c="http://schemas.xmlsoap.org/soap/encoding/" xmlns:v="http://schemas.xmlsoap.org/soap/envelope/">
    <v:Header>
        <b>pirata</b>
        <c>pirata</c>
        <d>0.0.0</d>
        <e>0.0.0</e>
        <f>0.0.0.0</f>
        <g>{{token}}</g>
        <h>0.0</h>
        <i>0.0</i>
        <j></j>
    </v:Header>
    <v:Body>
        <n0:getStatus xmlns:n0="http://soap.ws.placa.service.sinesp.serpro.gov.br/">
            <a>{{placa}}</a>
        </n0:getStatus>
    </v:Body>
</v:Envelope>