*** Settings ***
Resource    ../6_report/import.robot

*** Test Cases ***
[AUTO_01] bai3
    [Documentation]    bai3
    [Tags]    bai3_tag
    Open Browser    https://www.google.com   chrome
    Tìm kiếm     MSB
    Verify trang có chứa     Chọn thẻ phù hợp với bạn
