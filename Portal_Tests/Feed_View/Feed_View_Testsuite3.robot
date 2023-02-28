*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://portal.poimapper.com/login.jsp

*** Test Cases ***
Check on 'Feed Loading' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Page should contain    Name
    Page should contain    Editor
    Page should contain    Modified On
    Page should contain    Created On
    Page should contain    Created By

Check on 'Opening Data From Feed View' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Page should contain    Name
    Page should contain    Editor
    Page should contain    Modified On
    Page should contain    Created On
    Page should contain    Created By
    Click Link    //*[@id="app"]/div/div[3]/div/table/tbody/tr[2]/td[1]/a

*** Keywords ***
Login
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Input Text    id=passkey    4!8dt9&#@4xhju2%i4p&
    Click Button    class=btn.btn-primary.btn-sm.login-btn
