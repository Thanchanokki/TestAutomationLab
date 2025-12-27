*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Registration.html


*** Test Cases ***
Register Success No Organization Info
    Open Browser    ${URL}    chrome
    Maximize Browser Window

    Wait Until Element Is Visible    id=firstname    5s

    Input Text    id=firstname    Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234

    Click Button    id=registerButton

    Wait Until Page Contains    Thank you for registering with us.    5s
    Title Should Be    Success
    Page Should Contain    We will send a confirmation to your email soon.

    Close Browser

