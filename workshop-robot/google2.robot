*** Settings ***
Library          SeleniumLibrary
Library          String
Suite Setup      เปิดไปยังหน้าแรกของ google
Suite Teardown   Close Browser
Test Teardown    ย้อนกลับไปหน้าแรก

*** Variables ***
${BASE_URL}    http://www.google.com

*** Test Cases ***
ค้นหาข้อมูล katalon จาก google
   [Tags]   done
   ค้นหาคำว่า   katalon
   ต้องเจอข้อมูลของ katalon

ค้นหาข้อมูล robot จาก google
   [Tags]   testing
   Find "robot" from google
   ต้องเจอข้อมูลของ katalon

*** Keywords ***
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