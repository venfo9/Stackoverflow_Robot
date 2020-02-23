*** Settings ***
Library  Selenium2Library
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}  https://ru.stackoverflow.com
${email}    dwy11302@eoopy.com
${password}     1234qwer

*** Test Cases ***
LoginTest
    Open my Browser    ${url}    ${browser}
    Click Login
    Enter Email     ${email}
    Enter Password  ${password}
    Click Submit
    Verify Succesfull Login
    Close my Browser
