*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Empty First Name and Last Name
    Open Browser    ${URL}    chrome
    sleep    2s
    Maximize Browser Window
    Wait Until Element Is Visible    id=registerButton    5s

    # ไม่กรอก First Name และ Last Name
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    sleep    2s
    # โดยปกติจะขึ้นข้อความเตือนให้กรอกชื่อ
    Page Should Contain    Please enter your name!!

    Close Browser

