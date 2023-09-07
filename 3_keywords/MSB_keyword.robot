*** Settings ***
Resource    ../2_elements/MSB.robot
Library  SeleniumLibrary


*** Keywords ***

Tìm kiếm 
    [Arguments]    ${search_b3}
    Maximize Browser Window
    Input Text    ${ipn_text_b3}    ${search_b3}
    Wait Until Element Is Visible   ${click_suggest_b3}     10s
    Click Element    ${click_suggest_b3}
    Wait Until Element Is Visible    ${click_result_b3}    10s
    Click Element    ${click_result_b3}
    Wait Until Element Is Visible    ${close_popup_b3}    10s
    Click Element    ${close_popup_b3}


Verify trang có chứa 
    [Arguments]        ${text_b3}
     Wait Until Element Is Visible    //div[text()='${text_b3}']    10s     
