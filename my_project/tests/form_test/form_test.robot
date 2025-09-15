*** Settings ***
Library    SeleniumLibrary
Resource    ../../resources/form_keywords.robot
Documentation    Test suite for the form submission functionality
Suite Setup    Abrir el Navegador
Suite Teardown    Close All Browsers
Test Setup    Log    Iniciando el test de prueba
Test Teardown    Log    Finalizando caso de prueba

*** Test Cases ***
Completar y validar formulario
    Completar formulario
    Validar formulario enviado
