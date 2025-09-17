*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary
Library    BuiltIn
Library    SeleniumLibrary
Library    Dialogs
Documentation    Test for API json requests

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
${ENDPOINT}    /users/1

*** Test Cases ***
Validar respuestas json anidadas
    Create Session    api_session    ${API_URL}
    ${response}=    GET On Session    api_session    ${ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${json}=    To Json    ${response.text}
    ${city}=    Get Value From Json    ${json}    $.address.city
    Should Be Equal    ${city[0]}    Gwenborough
    ${latitude}=    Get Value From Json    ${json}    $.address.geo.lat
    Should Be Equal    ${latitude[0]}    -37.3159
    Log    Ciudad: ${city[0]}
    Log    Latitud: ${latitude[0]}
