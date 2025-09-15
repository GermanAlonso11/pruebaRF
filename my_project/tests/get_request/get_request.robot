*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Documentation    Tests for GET requests using RequestLibrary

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
${ENDPOINT}     /users/1

*** Test Cases ***
Obtener datos del usuario
    Create Session    api_session    ${API_URL}
    ${response}    GET On Session    api_session    ${ENDPOINT}    expected_status=any
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    Respuesta: ${response.text}