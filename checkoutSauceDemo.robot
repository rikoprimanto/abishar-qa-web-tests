*** Settings ***
Documentation      shopping cart checkout
Library            SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify Successful Login to saucedemo
    [documentation]  Pastikan user berhasil login website saucedemo
    [Tags]  Smoke
    #Open Browser  https://www.saucedemo.com/  Safari
    Wait Until Element Is Visible  id:user-name  timeout=5
    Input Text  id:user-name  standard_user
    Input Password  id:password  secret_sauce
    Click Element  id:login-button

Verify User Successfully Checkout Items
    [Documentation]    Pastikan user berhasil checkout barang
    [Tags]    smoke
    Open Browser  https://www.saucedemo.com/  Safari
    Wait Until Element Is Visible  id:user-name  timeout=5
    Input Text  id:user-name  standard_user
    Input Password  id:password  secret_sauce
    Click Element  id:login-button
    Click Element    //*[@id="item_4_title_link"]/div    
    Click Element    id:add-to-cart-sauce-labs-backpack    
    Click Element    //*[@id="shopping_cart_container"]
    Click Element    id:checkout
    Input Text    first-name    Riko
    Input Text    last-name    Primanto
    Input Text    postal-code    12250
    Click Element    id:continue
    Click Element    id:finish
    Wait Until Page Contains    Thank You For Your Order !