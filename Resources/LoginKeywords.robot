*** Settings ***
Library  Selenium2Library
Variables  ../PageObjects/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${Url}     ${Browser}
    open browser  ${Url}    ${Browser}

Click Login
    click element  ${btn_login}

Enter Email
    [Arguments]     ${email}
    input text  ${txt_email}     ${email}

Enter Password
    [Arguments]     ${password}
    input text  ${txt_password}     ${password}

Click Submit
    click button  ${btn_submit}

Verify Succesfull Login
    wait until page contains element    ${btn_my_profile}
    ${href}     get element attribute   ${btn_my_profile}    href
    should be equal     ${href}     https://ru.stackoverflow.com/users/373580/dwy11302
    log to console  ${href}

Close my Browser
    close all browsers


