*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/Lab4/Registration.html

*** Test Cases ***
TC1 Open Registration Page
    Open Browser    ${URL}    chrome
    [Teardown]    Close All Browsers
