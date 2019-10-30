*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${URL}    http://nervgh.github.io/pages/angular-file-upload/examples/simple/

*** Test Case ***
Upload image file จำนวน 3 file และ upload ทีละ file
    ไปยังหน้า upload file
    ทำการ upload file ที่ 1
    ทำการ upload file ที่ 2
    ทำการ upload file ที่ 3
    ทำการ upload ทีละ file

*** Keywords ***
ทำการ upload ทีละ file
    Click Element   
    ...  xpath://table/tbody/tr[1]/td[5]/button[1]
    Wait Until Page Contains Element
    ...  xpath://div[@style="width: 33%;"]
    Click Element   
    ...  xpath://table/tbody/tr[2]/td[5]/button[1]
    Wait Until Page Contains Element
    ...  xpath://div[@style="width: 67%;"]
    Click Element   
    ...  xpath://table/tbody/tr[3]/td[5]/button[1]
    Wait Until Page Contains Element
    ...  xpath://div[@style="width: 100%;"]



ทำการ upload file ที่ 1
    Choose File    xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]
    ...  ${CURDIR}/data_files/image_01.png

ทำการ upload file ที่ 2
    Choose File    xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]
    ...  ${CURDIR}/data_files/image_02.png

ทำการ upload file ที่ 3
    Choose File    xpath://*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]
    ...  ${CURDIR}/data_files/image_03.png

ไปยังหน้า upload file
    Open Browser   ${URL}   browser=chrome
    Maximize Browser Window