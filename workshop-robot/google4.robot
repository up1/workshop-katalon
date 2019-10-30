*** Settings ***
Resource         resources/share.robot
Suite Setup      เปิดไปยังหน้าแรกของ google
Suite Teardown   Close Browser

*** Variables ***
${BASE_URL}    http://www.google.com

*** Test Cases ***
Search success with simple keyword
    [Template]   ขั้นตอนการค้นหาข้อมูลจาก google
    Katalon
    Robot framework
    keyword 3

*** Keywords ***
ขั้นตอนการค้นหาข้อมูลจาก google
   [Arguments]   ${keyword}
   share.ค้นหาคำว่า   ${keyword}
   share.ต้องเจอข้อมูลของ katalon
   share.ย้อนกลับไปหน้าแรก