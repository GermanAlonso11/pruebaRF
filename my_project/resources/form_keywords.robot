*** Settings ***
Library    SeleniumLibrary
Library    webdriversync.py

*** Variables ***
${URL}    https://demoqa.com/automation-practice-form
${BROWSER}    chrome
${FIRST_NAME}    John
${LAST_NAME}    Doe 
${EMAIL}    john.doe@example
${GENDER}    Male
${PHONE}    1234567890

*** Keywords ***
Abrir el Navegador
    ${driver_path}=    Get Webdriver Path
    Open Browser    ${URL}    ${BROWSER}    executable_path=${driver_path}
    Maximize Browser Window

Completar formulario
    Input Text    id:firstName    ${FIRST_NAME}
    Input Text    id:lastName    ${LAST_NAME}
    Input Text    id:userEmail    ${EMAIL}
    Click Element    xpath://label[contains(text(), ${GENDER})]
    Input Text    id:userNumber    ${PHONE}
    Wait Until Element Is Enabled    id:submit    10s
    Click Element    id:submit

Validar formulario enviado
    Wait Until Element Is Visible    id:example-modal-sizes-title-lg    10s
    Element Should Contain    css.table-responsive    ${FIRST_NAME} ${LAST_NAME}
    Element Should Contain    css.table-responsive    ${EMAIL}

