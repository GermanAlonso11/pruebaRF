*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Documentation    Page de logica para hacer peticion Get a usuarios

*** Variables ***
${API_URL}    http://localhost:3000
&{ENDPOINT}    users=/api/users/1    role=/api/roles/1

*** Keywords ***
Obtener datos del usuario
    Create Session    api_session    ${API_URL}
    ${response}    GET On Session    api_session    ${ENDPOINT}    expected_status=any
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    Respuesta: ${response.text}
