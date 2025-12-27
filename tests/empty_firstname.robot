*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Empty First Name Fail
    Open Browser    ${URL}    chrome
    sleep    2s
    Maximize Browser Window
    Wait Until Element Is Visible    id=lastname    5s


    Input Text    id=lastname        Sodyod
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    sleep    2s
    # ถ้าข้อความเตือนแสดงบนหน้า
    Page Should Contain    Please enter your first name!!

    Close Browser

