*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://portal.poimapper.com/login.jsp

*** Test Cases ***
Poimapper Login
    [Tags]    Test1
    Open browser    ${url}    chrome
    Login
    Close browser

Forgot Password
    Open browser    ${url}    chrome
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Click link    xpath://a[text()='Forgot password?']
    Set Browser implicit wait    10
    Input text    id=resetEmail    june123
    Set Browser implicit wait    10
    Click Button    id=generic-modal-positive-btn

Change Account
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Click Link    xpath://a[text()='Change account']

Remember me for 7 Days
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    5
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Input Text    id=passkey    4!8dt9&#@4xhju2%i4p&
    Select checkbox    name=rememberme
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Set Selenium Speed    3 seconds
    Click Link    xpath://a[text()='caleb']
    Page should contain    Log out
    Click Link    //*[@id="header-navbar-nav"]/div[2]/div/li[3]

*** Keywords ***
Login
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Input Text    id=passkey    4!8dt9&#@4xhju2%i4p&
    Click Button    class=btn.btn-primary.btn-sm.login-btn
