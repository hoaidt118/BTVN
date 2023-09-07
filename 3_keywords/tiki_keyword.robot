*** Settings ***
Resource    ../2_elements/tiki.robot
Library    SeleniumLibrary


*** Keywords ***
Tìm kiếm thành công
    [Arguments]    ${search}     ${index} 
    Maximize Browser Window
    Wait Until Element Is Visible    ${ipn_text}
    Input Text    ${ipn_text}    ${search}
    Wait Until Element Is Visible    ${ipn_search}    10s
    Click Element    ${ipn_search} 
    Wait Until Element Is Visible   //div[@data-view-id="product_list_container"]/div[${index}]     10s
    Click Element    //div[@data-view-id="product_list_container"]/div[${index}]    
    Wait Until Element Is Visible    ${btn_click}        10s
    Click Button   ${btn_click}

Verify popup 
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h4[text()='${text}']    10s
