*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Documentation    Prueba

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
${ENDPOINT}    /posts
${PARAMS}    userId=1


*** Test Cases ***
Solicitud Get con Parametros
    Create Session    api_session    ${API_URL}
    ${response}=    GET On Session    api_session    ${ENDPOINT}    params=${PARAMS}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    Respuesta: ${response.text}
