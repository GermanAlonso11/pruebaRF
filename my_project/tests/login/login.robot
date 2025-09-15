*** Settings ***
Library    SeleniumLibrary
Library    ../../resources/webdriversync.py

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${USER}    tomsmith
${PASSWORD}    SuperSecretPassword!
${BROWSER}    chrome

*** Test Cases ***
Completar formulario de login
    ${driver_path}=    Get Webdriver Path
    Open Browser    ${URL}    ${BROWSER}    executable_path=${driver_path}
    Maximize Browser Window
    Input Text    id:username    ${USER}
    Input Text    id:password    ${PASSWORD}
    Click Button    css:.radius
    Element Should Contain    id:flash     You logged into a secure area!
    Element Should Be Visible    css:.button.secondary.radius
    Close All Browsers


