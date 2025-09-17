*** Settings ***
Library    SeleniumLibrary
Library    ../../resources/webdriversync.py
Documentation    Parte 2 del POM, aqui se ejecutaran las pruebas para iniciar sesion
Resource    ../../resources/page/pom_login_page.robot

Suite Setup    Abrir el Navegador
Suite Teardown    Cerrar Navegador

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${username_value}    tomsmith
${password_value}    SuperSecretPassword!1
${mensaje_value}    Your password is invalid!

*** Test Cases ***
Prueba login
    Abrir el Navegador
    Realizar login    ${username_value}    ${password_value}
    Verificar mensaje de error    ${mensaje_value}

*** Keywords ***
Abrir el navegador
    ${diver_path}=    Get Webdriver Path
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Cerrar Navegador
    Close All Browsers