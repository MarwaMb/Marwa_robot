*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL1}         https://admin-demo.nopcommerce.com    #Variables globales
${BROWSER1}     chrome
${URL2}         http://google.com    #Variables globales
${BROWSER2}     chrome


*** Test Cases ***
Login Test
    Lancer le navigateur    ${URL1}    ${BROWSER1}
    Input Text    id:Email    admin@yourstore.com
    Input Password    id:Password    admin
    Click Button    xpath://button[@type="submit"]

Search google
    Lancer le navigateur    ${URL2}    ${BROWSER2}


*** Keywords ***
Lancer le navigateur
    [Arguments]    ${URL_SITE}    ${NAVIGATEUR}
    Open Browser    ${URL_SITE}    ${NAVIGATEUR}
    Maximize Browser Window
