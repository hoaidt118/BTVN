*** Settings ***
Resource    ../3_keywords/Guru99_keyword.robot

*** Variables ***
${cusID}

*** Test Cases ***
[AUTO_01] bai4
    [Documentation]    bai4
    [Tags]    bai4_tag
    Open Browser    https://demo.guru99.com/telecom/index.html    chrome
    Tạo customerID   hoai     dt    hoaidt4@msb.com.vn    HaNoi    0981132692    
    Tạo tariff plan     Approved Tariff Plans    

