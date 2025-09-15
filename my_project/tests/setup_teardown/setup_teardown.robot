*** Settings ***
Library    SeleniumLibrary
Library    ../../resources/webdriversync.py
Documentation    Ejemplo de setup y teardown con Selenium
Suite Setup    Configurar Navegador
Suite Teardown    Cerrar Navegador
Test Setup    Log    Iniciando caso de pruebas
Test Teardown    Log    Finalizando caso de pruebas

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    chrome

*** Test Cases ***
Verificar pagina de google
    Page Should Contain    Google
    Log    Pagina de google cargada correctamente

Verificar campo de busqueda
    Element Should Be Visible    name:q
    Log    Campo de busqueda encontrado

Prueba con tag
    [Tags]    regression
    Log    Prueba etiquetada

*** Keywords ***
Configurar Navegador
    ${driver_path}=    Get Webdriver Path
    Open Browser    ${URL}    ${BROWSER}    executable_path=${driver_path}


Cerrar Navegador
    Close All Browsers