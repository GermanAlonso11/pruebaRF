*** Settings ***
Library    SeleniumLibrary
Documentation    Keywords clave para la pagina de login

*** Variables ***
${username_field}    id:username
${password_field}    id:password    
${login_button}    css:.radius
${error_message}    id:flash

*** Keywords ***
Ingresar Credenciales
    [Arguments]    ${username}    ${password}
    [Documentation]    Ingresa el nombre y contraseña a los campos
    Input Text    ${username_field}    ${username}
    Input Text    ${password_field}    ${password}

Enviar formulario
    [Documentation]    Hace click en el boton de login para enviar el formulario
    Click Button    ${login_button}

Verificar mensaje de error
    [Arguments]    ${mensaje_esperado}
    [Documentation]    Valida el mensaje de error que aparezca en la pagina
    Element Should Contain    ${error_message}    ${mensaje_esperado}

Realizar login
    [Arguments]    ${username}    ${password}
    [Documentation]    Completa el login y lo envia
    Ingresar Credenciales    ${username}    ${password}
    Enviar formulario
    