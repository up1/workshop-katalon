*** Settings ***
Library          SeleniumLibrary
Library          String
Resource         pages/search_page.robot
Resource         pages/search_result_page.robot
Suite Setup      search_page.เปิดไปยังหน้าแรกของ google
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
   search_page.ค้นหาคำว่า   ${keyword}
   search_result_page.ต้องเจอข้อมูลของ katalon
   search_page.ย้อนกลับไปหน้าแรก