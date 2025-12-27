*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Empty Last Name fail
    Open Browser    ${URL}    chrome
    sleep    2s
    Maximize Browser Window
    Wait Until Element Is Visible    id=firstname    5s

    Input Text    id=firstname       Somyod
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    sleep    2s
    # ถ้าข้อความเตือนแสดงบนหน้าเว็บ
    Page Should Contain    Please enter your last name!!

    Close Browser

