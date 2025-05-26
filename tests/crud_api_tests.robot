*** Settings ***
Library           RequestsLibrary
Library           Collections

Suite Setup       Create Session   crudcrud   https://crudcrud.com/api/22e70df168e142b9a418bad9e3d9c8a1
Suite Teardown    Delete All Sessions

*** Variables ***
${RESOURCE}       exemplo
&{HEADERS}        Content-Type=application/json

*** Keywords ***
Parse Response Json
    [Arguments]    ${response}
    ${json}=    Set Variable    ${response.json()}
    RETURN    ${json}

Criar Recurso
    ${body}=    Create Dictionary    nome=Caneca    preco=120.0
    ${response}=    POST On Session    crudcrud    /${RESOURCE}    json=${body}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    201
    ${json}=    Parse Response Json    ${response}
    Log    Recurso criado com ID: ${json['_id']}
    RETURN    ${json['_id']}

Ler Recurso
    [Arguments]    ${resource_id}
    ${response}=    GET On Session    crudcrud    /${RESOURCE}/${resource_id}
    Should Be Equal As Integers    ${response.status_code}    200
    ${json}=    Parse Response Json    ${response}
    RETURN    ${json}

Atualizar Recurso
    [Arguments]    ${resource_id}
    ${updated_body}=    Create Dictionary    nome=Caneca atualizada    preco=108.0
    ${response}=    PUT On Session    crudcrud    /${RESOURCE}/${resource_id}    json=${updated_body}    headers=${HEADERS}
    Should Be Equal As Integers    ${response.status_code}    200

Deletar Recurso
    [Arguments]    ${resource_id}
    ${response}=    DELETE On Session    crudcrud    /${RESOURCE}/${resource_id}
    Should Be Equal As Integers    ${response.status_code}    200

Validar Exclusão
    [Arguments]    ${resource_id}
    ${response}=    GET On Session    crudcrud    /${RESOURCE}/${resource_id}    expected_status=any
    Should Be Equal As Integers    ${response.status_code}    404

*** Test Cases ***
Teste Completo de CRUD
    ${recurso_id}=    Criar Recurso

    ${json}=    Ler Recurso    ${recurso_id}
    Should Be Equal As Strings    ${json['nome']}    Caneca
    Should Be Equal As Numbers    ${json['preco']}    120.0

    Atualizar Recurso    ${recurso_id}

    ${json}=    Ler Recurso    ${recurso_id}
    Should Be Equal As Strings    ${json['nome']}    Caneca atualizada
    Should Be Equal As Numbers    ${json['preco']}    108.0

    Deletar Recurso    ${recurso_id}

    Sleep    1s
    Validar Exclusão    ${recurso_id}
