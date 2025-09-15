*** Settings ***
Library    BuiltIn
Library    RequestsLibrary
Documentation    Pruebas de auth en solicitudes HTTP

*** Variables ***
${API_URL}    https://httpbin.org
${ENDPOINT}    /basic-auth/user/passwd
${USERNAME}    user
${PASSWORD}    passwd

*** Test Cases ***
Autenticacion basica en solicitud GET
    ${auth}=    Create List    ${USERNAME}    ${PASSWORD}
    Create Session    api_session    ${API_URL}    auth=${auth}
    ${response}=    GET On Session    api_session    ${ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    Respuesta: ${response.text}
