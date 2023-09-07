*** Settings ***
Resource    ../2_elements/Guru99.robot
Library  SeleniumLibrary

*** Keywords ***

Tạo customerID
    [Arguments]    ${fname}    ${lname}    ${email}    ${mesage}    ${phone}    
    Maximize Browser Window
    Wait Until Element Is Visible    ${click_cus}
    Click Element     ${click_cus}
    Wait Until Element Is Visible    ${bg_check}    
    Click Element    ${bg_check}
    Input Text    ${fist_name}    ${fname}
    Input Text    ${last_name}    ${lname}    
    Input Text    ${ipn_email}     ${email}   
    Input Text    ${address}    ${mesage}
    Input Text    ${mb_number}   ${phone} 
    Click Element      ${bt_submit}
    


Tạo tariff plan
    [Arguments]    ${text_b4}          
    ${cusID}    Get Text    //td[@align="center"]/h3
    Wait Until Element Is Visible    ${click_home}
    Click Element    ${click_home}
    Wait Until Element Is Visible    ${click_addTP}
    Click Element    ${click_addTP}
    Wait Until Element Is Visible    ${inp_cus}
    Input Text   //input[@name="customer_id"]    ${cusID}
    Click Element    ${click_submit}  
    Wait Until Element Is Visible    //h2[text()="${text_b4}"]

    
