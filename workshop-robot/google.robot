*** Settings ***
Library          SeleniumLibrary
Library          String
Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
ค้นหาข้อมูล katalon จาก google
   [Tags]   done
   เปิดไปยังหน้าแรกของ google
   ค้นหาคำว่า   katalon
   ต้องเจอข้อมูลของ katalon

ค้นหาข้อมูล robot จาก google
   [Tags]   testing
   เปิดไปยังหน้าแรกของ google
   Find "robot" from google
   ต้องเจอข้อมูลของ katalon

*** Keywords ***
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
    Open Browser   http://www.google.com   browser=gc
    Maximize Browser Window
    Capture Page Screenshot