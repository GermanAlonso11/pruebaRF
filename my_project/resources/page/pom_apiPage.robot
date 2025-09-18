*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Documentation    Page de logica para hacer peticion Get a usuarios

*** Variables ***
${API_URL}    http://localhost:3000
${ENDPOINT_role}    /api/roles/1
${ENDPOINT_user}    /api/users/1


*** Keywords ***
Obtener todos los usuarios
    Create Session    api_session    ${API_URL}
    ${response}    GET On Session    api_session    ${ENDPOINT_user}    expected_status=any
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    Respuesta: ${response.text}

Obtener todos los roles
    ${response}=    GET On Session    api_session    ${ENDPOINT_role}
    RETURN    ${response}


   

    