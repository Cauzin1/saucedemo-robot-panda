*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${USERNAME}      standard_user
${PASSWORD}      secret_sauce
${BROWSER}       Chrome

*** Test Cases ***
Adicionar Item Ao Carrinho
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id:user-name    ${USERNAME}
    Input Text      id:password     ${PASSWORD}
    Click Button    id:login-button
    Click Button    id:add-to-cart-sauce-labs-backpack
    Click Link      class:shopping_cart_link
    Page Should Contain Element    xpath://div[@class='inventory_item_name' and contains(text(), 'Backpack')]
    Close Browser
