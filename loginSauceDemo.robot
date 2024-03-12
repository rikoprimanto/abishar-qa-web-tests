*** Settings ***
Documentation      Login Functionality
Library            SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify Successful Login to saucedemo
    [documentation]  This test case verifies that user is able to successfully Login to Sauce Demo
    [tags]  Smoke
    Open Browser  https://www.saucedemo.com/  Safari
    Wait Until Element Is Visible  id:user-name  timeout=5
    Input Text  id:user-name  standard_user
    Input Password  id:password  secret_sauce
    Click Element  id:login-button