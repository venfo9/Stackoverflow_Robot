*** Settings ***
Library  Selenium2Library
Variables  ../PageObjects/Locators.py


*** Keywords ***
Open My Browser
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

Verify Alert For Empty Email
    wait until page contains element    ${label_empty_email}
    ${txt_empty_email}     get text   ${label_empty_email}
    should be equal     ${txt_empty_email}     Поле ввода почты не может быть пустым.
    log to console  ${txt_empty_email}

Verify Alert For Empty Password
    wait until page contains element    ${label_empty_password}
    ${txt_empty_password}     get text   ${label_empty_password}
    should be equal     ${txt_empty_password}     Поле ввода пароля не может быть пустым.
    log to console  ${txt_empty_password}

Verify Alert For Wrong Email
    wait until page contains element    ${label_wrong_data}
    ${txt_wrong_email}     get text   ${label_wrong_data}
    should be equal     ${txt_wrong_email}     Указанный адрес не является действительным адресом электронной почты.
    log to console  ${txt_wrong_email}

Verify Alert For Wrong Password
    wait until page contains element    ${label_wrong_data}
    ${txt_wrong_password}     get text   ${label_wrong_data}
    should be equal     ${txt_wrong_password}     Почта или пароль заданы неверно.
    log to console  ${txt_wrong_password}

Verify Alert For Wrong Email And Password
    wait until page contains element    ${label_wrong_data}
    ${txt_wrong_email}     get text   ${label_wrong_data}
    should be equal     ${txt_wrong_email}     Указанный адрес не является действительным адресом электронной почты.
    log to console  ${txt_wrong_email}

Close My Browser
    close all browsers


