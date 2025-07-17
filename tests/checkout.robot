*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce
${BROWSER}       Chrome

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce
${BROWSER}       Chrome

*** Test Cases ***
Finalizar Compra Com Sucesso
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id:user-name    ${USERNAME}
    Input Text      id:password     ${PASSWORD}
    Click Button    id:login-button
    Click Button    id:add-to-cart-sauce-labs-backpack
    Click Link      class:shopping_cart_link
    Click Button    id:checkout

    Wait Until Element Is Visible    id:first-name    timeout=5s
    Input Text      id:first-name    João
    Input Text      id:last-name     QA
    Input Text      id:postal-code   12345

    Click Button    id:continue
    Wait Until Element Is Visible    id:finish    timeout=5s
    Scroll Element Into View         id:finish
    Click Button                     id:finish


    Page Should Contain    Thank you for your order!
    Close Browser

