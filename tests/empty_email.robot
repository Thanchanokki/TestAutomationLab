*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Empty Email
    Open Browser    ${URL}    chrome
    sleep    2s
    Maximize Browser Window
    Wait Until Element Is Visible    id=registerButton    5s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    # ไม่กรอก email
    Input Text    id=phone           091-001-1234

    Click Button    id=registerButton
    sleep    2s
    Page Should Contain    Please enter your email!!

    Close Browser

