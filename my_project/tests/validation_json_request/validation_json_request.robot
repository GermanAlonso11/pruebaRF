*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Library    Collections
Documentation    Tests fo validating json request bodies in API endpoints

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
${ENDPOINT}    /users

*** Test Cases ***
Validar respuestas Json
    Create Session    session_api    ${API_URL}
    ${response}    GET On Session    session_api    ${ENDPOINT}
    Should Be Equal As Numbers    ${response.status_code}   200
    ${json}    Set Variable    ${response.json()}
    Dictionary Should Contain Key    ${json[0]}    name
    Should Be Equal    ${json[0]['name']}    Leanne Graham
    Log    ${json}