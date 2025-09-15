*** Settings ***
Library    BuiltIn
Documentation    Prueba simple en Robot Framework

*** Variables ***
${NUM1}    5
${NUM2}    3
${RESULTADO_ESPERADO}    8

*** Test Cases ***
Validar Suma simple
    ${resultado}=    Evaluate    ${NUM1} + ${NUM2}
    Should Be Equal As Numbers    ${resultado}    ${RESULTADO_ESPERADO}
    Log    La suma de ${NUM1} + ${NUM2} es ${resultado}