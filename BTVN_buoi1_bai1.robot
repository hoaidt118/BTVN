*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[AUTO_01] bai1
    [Documentation]    bai1
    [Tags]    bai1_tag
    Truy cập Guru 99 
    Nhập username
    Nhập password
    Click Sign in
    Verify màn hình có chứa dòng chữ "Successfully Logged in..."

*** Keywords ***
Truy cập Guru 99     
    Open Browser    https://demo.guru99.com/test/login.html    chrome  
    Maximize Browser Window

Nhập username
    Input Text    //input[@id="email"]    hoaidt

Nhập password
    Input Text    //input[@id="passwd"]    123

Click Sign in
    Click Button    //button[@id="SubmitLogin"]

Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    Wait Until Element Is Visible    //h3[contains(text(),'Successfully Logged in...')]    5s