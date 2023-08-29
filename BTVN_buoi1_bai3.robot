*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[AUTO_02] bai3
    [Documentation]    bai3
    [Tags]    bai3_tag
    Truy cập google.com
    Tìm kiếm từ khóa "MSB"
    Sleep    5s
    Click vào gợi ý đầu tiên
    Sleep    5s
    Click vào kết quả tìm kiếm đầu tiên
    Sleep    5s
    Tắt Popup
    Sleep    5s
    Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    
*** Keywords ***
Truy cập google.com
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window

Tìm kiếm từ khóa "MSB"
    Input Text    //textarea[@id='APjFqb']   MSB

Click vào gợi ý đầu tiên
    Wait Until Element Is Visible    //div[@id="jZ2SBf"] 
    Click Element    //div[@id="jZ2SBf"] 

Click vào kết quả tìm kiếm đầu tiên
    Wait Until Element Is Visible    //div[@id="rso"]/div[1]//a//h3[text()='MSB']
    Click Element    //div[@id="rso"]/div[1]//a//h3[text()='MSB']

Tắt Popup
    Wait Until Element Is Visible    //div[@id="fragment-34202-joci"]/div/div/div/span    
    Click Element    //div[@id="fragment-34202-joci"]/div/div/div/span

Verify trang có chứa "Chọn thẻ phù hợp với bạn"
    Wait Until Element Is Visible    //div[contains(text(),'Chọn thẻ phù hợp với bạn')] 
