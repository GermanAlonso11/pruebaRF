*** Settings ***
Library    BuiltIn
Library    String
Documentation    Ejemplo de palabras clave personalizadas

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Keywords ***
Construir URL completa
    [Arguments]    ${endpoint}    
    [Documentation]    Concatena la url base con un endpoint 
    ${url}=    Catenate    SEPARATOR=    ${BASE_URL}    ${endpoint}
    RETURN    ${url}

Generar email aleatorio
    [Documentation]    Genera un email aleatorio con dominio fijo
    ${random_string}=    Generate Random String    8    [LOWER]
    ${email}=    Catenate    SEPARATOR=    ${random_string}    @example.com
    RETURN    ${email}

*** Test Cases ***
Probar custom keywords
    ${url}=    Construir URL completa    /users/1
    Log To Console    URL Construida: ${url}
    ${email}=    Generar email aleatorio
    Log To Console    Email generado: ${email}

