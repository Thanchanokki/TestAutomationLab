*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///${EXECDIR}/StarterFiles/Registration.html

*** Test Cases ***
Register Fail Invalid Phone Number
    Open Browser    ${URL}    chrome
    Sleep    2s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com
    Input Text    id=phone           1234

    Click Button    id=registerButton
    Sleep    2s

    Title Should Be    Registration
    Page Should Contain    Please enter a valid phone number!!

    Close Browser
