*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
[AUTO_01] bai2
    [Documentation]     bai2
    [Tags]    bai2_tag
    Truy cập trang   
    Tìm kiếm    
    Sleep     10s
    Click vào sản phẩm thứ 4
    Sleep     10s
    Click Chọn mua
    Verify popup có chứa Xin chào

*** Keywords ***
Truy cập trang 
    Open Browser     https://tiki.vn/    chrome
    Maximize Browser Window

Tìm kiếm
    Input Text     //input[@data-view-id='main_search_form_input']    nồi chiên
    Wait Until Element Is Visible    //div[text()='nồi chiên không dầu']    
    Click Element    //div[text()='nồi chiên không dầu']

Click vào sản phẩm thứ 4
    Wait Until Element Is Visible    //div[@data-view-id="product_list_container"]/div[4] 
    Click Element    //div[@data-view-id="product_list_container"]/div[4]   

Click Chọn mua
    Click Button     //button[@data-view-id="pdp_add_to_cart_button"]

Verify popup có chứa Xin chào
    Wait Until Element Is Visible    //h4[text()='Xin chào,']     10s
