*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce
${BROWSER}       Chrome

*** Test Cases ***
Login Com Sucesso
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id:user-name    ${USERNAME}
    Input Text      id:password     ${PASSWORD}
    Click Button    id:login-button
    Page Should Contain Element    class:inventory_list
    Close Browser
