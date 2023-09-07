*** Settings ***
Resource    ../6_report/import.robot

*** Test Cases ***
[AUTO_01] bai2
    [Documentation]     bai2
    [Tags]    bai2_tag
    Open Browser    https://tiki.vn/    chrome  
    Tìm kiếm thành công    nồi chiên    4
    Verify popup     Xin chào,

  