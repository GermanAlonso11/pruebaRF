*** Settings ***
Library    BuiltIn
Library    Collections

*** Variables ***
${MENSAJE}    Hola Robot
@{NUMEROS}    1    2    3    4

*** Test Cases ***
Probar palabras claves
    Log    ${MENSAJE}
    Should Be Equal    ${MENSAJE}    Hola Robot
    ${longitud}=    Get Length    ${NUMEROS}
    Should Be Equal As Numbers    ${longitud}    4
    Log List    ${NUMEROS}
    