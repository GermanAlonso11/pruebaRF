*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Documentation    Prueba

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
${ENDPOINT}    /posts
${HEADERS}    Content-Type=application/json    Accept=application/json

*** Test Cases ***
Solicitud Get con Headers
    Create Session    api_session    ${API_URL}
    ${response}=    GET On Session    api_session    ${ENDPOINT}    headers=${HEADERS}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    Respuesta: ${response.text}
