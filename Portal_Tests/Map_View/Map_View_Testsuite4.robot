*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://portal.poimapper.com/login.jsp

*** Test Cases ***
Check on 'Loading of the Map View' Functionality
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Page should contain    Map
    Click Element    class=fa.fa-map-o

Check on 'Opening SIV from the Map' Functionality
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    sleep    2s
    Wait until page does not contain    class=loading-inner
    Click Element    class=fa.fa-filter
    Click Element    //*[@id="form-filter-FormF006B22C8D0FCF2"]
    Click Element    /html/body/div[4]/div/div[1]/div[3]/button
    Page should contain    Map
    Click Element    //*[@id="global-map"]/div[1]/div[4]/img[1]
    Click Element    //*[@id="global-map"]/div[1]/div[6]/div/div[1]/div/a
    sleep    2s
    Click Element    class=fa.fa-search

*** Keywords ***
Login
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Input Text    id=passkey    4!8dt9&#@4xhju2%i4p&
    Click Button    class=btn.btn-primary.btn-sm.login-btn
