*** Keywords ***
เปิดไปยังหน้าแรกของ google
    Open Browser   ${BASE_URL}   browser=gc
    Maximize Browser Window
    Capture Page Screenshot

ย้อนกลับไปหน้าแรก
    Go To   ${BASE_URL}

ค้นหาคำว่า
    [Arguments]   ${keyword}
    Input Text    name:q   ${keyword}
    Press Keys    name:q   RETURN

Find "${keyword}" from google
    Input Text    name:q   ${keyword}
    Press Keys    name:q   RETURN



