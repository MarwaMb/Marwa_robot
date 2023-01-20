*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}          https://admin-demo.nopcommerce.com    #Variables globales
${BROWSER}      chrome


*** Test Cases ***
Login Test
    Lancer le navigateur
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]


*** Keywords ***
Lancer le navigateur
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
