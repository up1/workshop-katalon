*** Keywords ***
ต้องเจอข้อมูลของ katalon
    Capture Page Screenshot
    # Wait Until Element Contains   id:resultStats   ผลการค้นหาประมาณ
    # Wait Until Element Contains   id:resultStats   รายการ
    Wait Until Page Contains Element  id:resultStats
    ${result}=  Get Text   id:resultStats
    Log To Console   ${result}
    @{datas}=  Split String  ${result}   ${SPACE}
    Should Be Equal   ผลการค้นหาประมาณ    ${datas}[0]
    Should Be Equal   รายการ             ${datas}[2]