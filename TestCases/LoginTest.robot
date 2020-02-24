*** Settings ***
Library  Selenium2Library
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  chrome
${url}  https://ru.stackoverflow.com
${email}    dwy11302@eoopy.com
${password}     1234qwer
${wrong_email}    dwy11302@eoopy
${wrong_password}     1234qwe

*** Test Cases ***
#LoginTest
#    Open my Browser    ${url}    ${browser}
#    Click Login
#    Enter Email     ${email}
#    Enter Password  ${password}
#    Click Submit
#    Verify Succesfull Login
#    Close my Browser
#
#Empty LoginTest
#    Open my Browser    ${url}    ${browser}
#    Click Login
#
#    Enter Email     ${email}
#    Click Submit
#    Verify Alert For Empty Password
#    reload page
#
#    Enter Password   ${password}
#    Click Submit
#    Verify Alert For Empty Email
#    reload page
#
#    Click Submit
#    Verify Alert For Empty Email
#    Verify Alert For Empty Password
#
#    Close my Browser

Wrong LoginTest
    Open my Browser    ${url}    ${browser}
    Click Login

    Enter Email     ${wrong_email}
    Enter Password     ${password}
    Click Submit
    Verify Alert For Wrong Email

    Enter Email     ${email}
    Enter Password     ${wrong_password}
    Click Submit
    Verify Alert For Wrong Password

    Enter Email     ${wrong_email}
    Enter Password     ${wrong_password}
    Click Submit
    Verify Alert For Wrong Email And Password

    Close my Browser