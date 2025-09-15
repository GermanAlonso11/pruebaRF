*** Settings ***
Library     BuiltIn
Variables    variables.py

*** Keywords ***
suma dos numeros
    [Arguments]     ${num1}    ${num2}
    ${resultado} =    Evaluate    ${num1} + ${num2}
    RETURN    ${resultado}