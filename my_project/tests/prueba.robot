*** Settings ***
Library    BuiltIn
Documentation    Ejemplo de config en Robot Framework
Suite Setup    Log    Iniciando suite de pruebas
Suite Teardown    Log    Finalizando la suite de pruebas

*** Test Cases ***
Mi primer Test
    Log    Mensaje de log
    Should Be Equal As Numbers    ${1+1}    ${2}

*** Keywords ***
Saludar
    [Arguments]    ${nombre}
    Log    Hola, ${nombre}

*** Variables ***
${URL}    https://www.google.com
@{colores}    rojo    azul    verde
&{usuario}    nombre=juan    email=juan@gmail.com    edad=23
    

