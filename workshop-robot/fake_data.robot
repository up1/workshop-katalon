*** Settings ***
Library   FakerLibrary

*** Variable ***

http://bit.ly/2NrleW7

*** Test Case ***
Generate 100 emails
    ${index}=  Set Variable   1
    FOR  ${index}  IN RANGE  100
        ${email}=   Company Email
        Log To Console   ${email}
    END