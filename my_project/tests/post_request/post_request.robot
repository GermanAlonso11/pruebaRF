*** Settings ***
Library    BuiltIn
Library    RequestsLibrary
Documentation    Prueba de una solicitud Post usando RequestLibrary

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
${ENDPOINT}    /posts
${PAYLOAD}    {"title": "Mi nuevo post", "body", "Contenido del post", "userId": 1}


*** Test Cases ***
Crear un nuevo post
    Create Session    api_session    ${API_URL}
    ${response}    POST On Session    api_session    ${ENDPOINT}    data=${PAYLOAD}
    Should Be Equal As Numbers    ${response.status_code}    201.0
    Log    Respuesta: ${response.text}