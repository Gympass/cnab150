> Criando todos os tipos possíveis de registro, de A a Z.
> data = [
> {
>   registry_code: 'A',
>   registry_type: 1,
>   agreement: Secrets::SANTANDER_AGREEMENT,
>   organization: 'Empresa XXXXXX',
>   bank_code: 033,
>   bank_name: 'BANCO SANTANDER S.A.',
>   file_date: 20151203,
>   file_number: 1,
>   version: 4,
>   service: 'DÉBITO AUTOMÁTICO',
>   filler: ''
> },
> {
>   registry_code: 'B',
>   person_id: '7878',
>   agency: 'XXXX',
>   bank_person_id: '7878',
>   due_date: 20151203,
>   filler: '',
>   movement_code: 1
> },
> {
>   registry_code: 'C',
>   person_id: '7878',
>   agency: 'XXXX',
>   bank_person_id: '7878',
>   occurrence_1: 'Restrição de cadastramento pela empresa',
>   occurrence_2: 'Erro 12345',
>   filler: '',
>   movement_code: 1
> },
> {
>   registry_code: 'D',
>   person_id: '7878',
>   agency: 'XXXX',
>   bank_person_id: '7878',
>   current_person_id: '7878',
>   occurrence: 'exclusão solicitada por interesse do cliente',
>   filler: '',
>   movement_code: 1
> },
> {
>   registry_code: 'E',
>   person_id: '7878',
>   agency: 'XXXX',
>   bank_person_id: '7878',
>   due_date: 20151203,
>   total_value: 8975,
>   currency_code: '03',
>   token: 'XXX1111XXXX33333XXX',
>   filler: '',
>   movement_code: 1
> },
> {
>   registry_code: 'F',
>   person_id: '7878',
>   agency: 'XXXX',
>   bank_person_id: '7878',
>   due_date: 20151203,
>   total_value: 8975,
>   return_code: '00',
>   company_filler: 'filler empresa',
>   filler: '',
>   movement_code: 1
> },
> {
>   registry_code: 'H',
>   person_id: '7878',
>   agency: 'XXXX',
>   bank_person_id: '7878',
>   current_person_id: '7878',
>   occurrence: "Erro tal tall tall",
>   filler: '',
>   movement_code: 1
> },
> {
>   registry_code: 'I',
>   person_id: '7878',
>   document_type: '2',
>   document_number: 39211874866,
>   name: 'Zeeee talll tallll',
>   city: 'Sao Paulo',
>   state: 'SP',
>   filler: ''
> },
> {
>   registry_code: 'J',
>   NSA: 123654,
>   generation_date: 20151203,
>   total_registries: 26,
>   total_value: 999999971,
>   processing_date: 20151203,
>   filler: ''
> },
> {
>   registry_code: 'L',
>   billing_date: 20151203,
>   due_date: 20151203,
>   shipping_date: 20151203,
>   person_shipping_date: 20151203,
>   filler: ''
> },
> {
>   registry_code: 'T',
>   total_registries: 6,
>   total_value_registries: 99999971,
>   filler: ''
> },
> {
>   registry_code: 'X',
>   agency: 'XXXX',
>   agency_name: 'Agência Mooca',
>   agency_address: 'Rua da mooca, 321',
>   agency_number: '543210',
>   agency_cep_prefix: '08241',
>   agency_cep_sufix: '250',
>   city: 'Sao Paulo',
>   state_code: 'SPsssssss',
>   agency_status: 'A',
>   filler: ''
> },
> {
>   registry_code: 'Z',
>   rows:'000004',
>   total: '00000000001533612', 
>   filler: ''
> }
]

> lines = Cnab150.registries(data)

> Resultado em array

> [
>   [ 0] "A100330729002500022537      Empresa XXXXXX027BANCO SANTANDER S.A.2015120300000104DÉBITO AUTOMÁTICO                                                    ",
>   [ 1] "B                     7878XXXX          787820151203                                                                                                 1",
>   [ 2] "C                     7878XXXX          7878 Restrição de cadastramento pela empresa                              Erro 12345                         1",
>   [ 3] "D                     7878XXXX          7878                     7878                exclusão solicitada por interesse do cliente                    1",
>   [ 4] "E                     7878XXXX          78782015120300000000000897503                                         XXX1111XXXX33333XXX                    1",
>   [ 5] "F                     7878XXXX          78782015120300000000000897500                                              filler empresa                    1",
>   [ 6] "H                     7878XXXX          7878                     7878                                        Erro tal tall tall                      1",
>   [ 7] "I                     7878200039211874866                      Zeeee talll tallll                     Sao PauloSP                                     ",
>   [ 8] "J123654201512030000260000000099999997120151203                                                                                                        ",
>   [ 9] "L20151203201512032015120320151203                                                                                                                     ",
>   [10] "T00000600000000099999971                                                                                                                              ",
>   [11] "XXXXX                 Agência Mooca             Rua da mooca, 3215432108241250           Sao PauloSPA                                                 ",
>   [12] "Z00000400000000001533612                                                                                                                              "
>]

>file = File.join(Rails.root, 'tmp', "cnab_test3.txt")
>Cnab150.save_to_file(file, lines)

>Resultado

> A100330729002500022537      Empresa XXXXXX027BANCO SANTANDER S.A.2015120300000104DÉBITO AUTOMÁTICO                                                    
> B                     7878XXXX          787820151203                                                                                                 1
> C                     7878XXXX          7878 Restrição de cadastramento pela empresa                              Erro 12345                         1
> D                     7878XXXX          7878                     7878                exclusão solicitada por interesse do cliente                    1
> E                     7878XXXX          78782015120300000000000897503                                         XXX1111XXXX33333XXX                    1
> F                     7878XXXX          78782015120300000000000897500                                              filler empresa                    1
> H                     7878XXXX          7878                     7878                                        Erro tal tall tall                      1
> I                     7878200039211874866                      Zeeee talll tallll                     Sao PauloSP                                     
> J123654201512030000260000000099999997120151203                                                                                                        
> L20151203201512032015120320151203                                                                                                                     
> T00000600000000099999971                                                                                                                              
> XXXXX                 Agência Mooca             Rua da mooca, 3215432108241250           Sao PauloSPA                                                 
> Z00000400000000001533612                                                                                                                              


## Usage
```
> string_cnab150 = ['A20000111111111       PREF MUN XXXXXX-XYZ 341BANCO ITAU S.A.     2015101600131203                                                                     ',
>                   'G982300210019        20151015201510168166000000005092477201510160000000000000007500000000050900000803120000701594   2                                 ',
>                   'G982300210019        20151015201510168169000000023012477201510310201200230228200100000000230100000803120001183477   2                                 ',
>                   'Z00000400000000001533612                                                                                                                              ']

> registries = Cnab150.parse_registries(string_cnab150)

> h = Cnab150.header(registries)

> h.to_hash
 => {registry_code: 'A', registry_type: '2', agreement: '0000111111111', organization: 'PREF MUN XXXXXX-XYZ', bank_code: '341', bank_name: 'BANCO ITAU S.A.', file_date: '20151016', file_number: '001312', version: '03', service: '', filler: ''}

> h.registry_code
 => 'A'

> h.registry_type
 => '2'

> cnabs.to_hash
#=> [
#      { registry_code: 'A', registry_type: '2', agreement: '0000111111111', organization: 'PREF MUN XXXXXX-XYZ', bank_code: '341', bank_name: 'BANCO ITAU S.A.', file_date: '20151016', file_number: '001312', version: '03', service: '', filler: '' },
#      { registry_code: 'G', account: '982300210019', payment_date: '20151015', credit_date: '20151016', barcode: '81660000000050924772015101600000000000000075', value: '000000000509', service_value: '0000080', registry_number: '31200007', agency: '0159', channel: '4', authentication: '   2', payment_type: '', filler: '' },
#      { registry_code: 'G', account: '982300210019', payment_date: '20151015', credit_date: '20151016', barcode: '81690000000230124772015103102012002302282001', value: '000000002301', service_value: '0000080', registry_number: '31200011', agency: '8347', channel: '7', authentication: '   2', payment_type: '', filler: '' },
#      { registry_code: 'Z', rows: '000004', total: '00000000001533612', filler: '                                                                                                                              ' }
#   ]


> registries = Cnab150.select(:g, string_cnab150)
#=> [
#      { registry_code: 'G', account: '982300210019', payment_date: '20151015', credit_date: '20151016', barcode: '81660000000050924772015101600000000000000075', value: '000000000509', service_value: '0000080', registry_number: '31200007', agency: '0159', channel: '4', authentication: '   2', payment_type: '', filler: '' },
#      { registry_code: 'G', account: '982300210019', payment_date: '20151015', credit_date: '20151016', barcode: '81690000000230124772015103102012002302282001', value: '000000002301', service_value: '0000080', registry_number: '31200011', agency: '8347', channel: '7', authentication: '   2', payment_type: '', filler: '' },
#   ]


```

