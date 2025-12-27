*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Empty Phone Number
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    2s
    Wait Until Element Is Visible    id=registerButton    5s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    # ไม่กรอก phone

    Click Button    id=registerButton
    Sleep    2s

    Page Should Contain    Please enter your phone number!!

    Close Browser



