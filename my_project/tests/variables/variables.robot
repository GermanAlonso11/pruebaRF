*** Settings ***
Library    BuiltIn
Documentation    Ejemplo de uso de variables escalares listas y diccionarios

*** Variables ***
${API_URL}    https://jsonplaceholder.typicode.com
@{ENDPOINTS}    /users/1    /posts/1    /comments/1
&{CREDENTIALS}    username=admin    password=secret123

*** Test Cases ***
Mostrar variables
    Log To Console    URL de la API: ${API_URL}
    Log To Console    Endpoints: ${ENDPOINTS}
    Log To Console    Primer endopoint ${ENDPOINTS[0]}
    Log To Console    Credenciales: &{CREDENTIALS}
    Log To Console    Nombre de usuario: ${CREDENTIALS.username}