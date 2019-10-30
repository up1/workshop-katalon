*** Settings ***
Library          SeleniumLibrary
Library          String
Suite Setup      เปิดไปยังหน้าแรกของ google
Suite Teardown   Close Browser
Test Teardown    ย้อนกลับไปหน้าแรก
Test Template    ขั้นตอนการค้นหาข้อมูลจาก google

*** Variables ***
${BASE_URL}    http://www.google.com

*** Test Cases ***
#------------------------------------
#     test case name |  Keywords     |
#------------------------------------
Data 1                  katalon
Data 2                  Robot framework

*** Keywords ***
ขั้นตอนการค้นหาข้อมูลจาก google
   [Arguments]   ${keyword}
   ค้นหาคำว่า   ${keyword}
   ต้องเจอข้อมูลของ katalon

ย้อนกลับไปหน้าแรก
    Go To   ${BASE_URL}

Find "${keyword}" from google
    Input Text    name:q   ${keyword}
    Press Keys    name:q   RETURN

ค้นหาคำว่า
    [Arguments]   ${keyword}
    Input Text    name:q   ${keyword}
    Press Keys    name:q   RETURN

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

เปิดไปยังหน้าแรกของ google
    Open Browser   ${BASE_URL}   browser=gc
    Maximize Browser Window
    Capture Page Screenshot