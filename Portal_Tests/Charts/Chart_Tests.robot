*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://gw2.poimapper.com/login.jsp?lang=en

*** Test Cases ***
Check on 'Pie Chart' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Set Browser Implicit Wait    10
    Click Button    //*[@id="app"]/div/div[1]/div[5]/button
    Select From List By Label    name:form    Make-up Review
    Select From List By Label    name:chartType    Pie chart
    Click Button    //*[@id="generic-modal-positive-btn"]
    Set Browser Implicit Wait    3
    Click Button    id=chart-select-questions
    Select Checkbox    id=chart-question-down-checkbox-f3F06DBA5F4BA821
    Select Checkbox    id=chart-question-down-checkbox-fFC6CA7D9AC985B9
    Click Button    id=chart-render-btn
    #Exclude Non-Response Values
    Click Element    //*[@id="chart-settings-dropdown"]
    Select Checkbox    id=chart-settings-down-checkbox-excludenull
    Click Button    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[2]/div[3]/button
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Bar Chart (Numeric Fields)' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Set Browser Implicit Wait    10
    Click Element    //*[@id="app"]/div/div[1]/div[5]/button
    Select From List By Label    name:form    Make-up Review
    Select From List By Label    name:chartType    Bar chart (Numeric fields)
    Click Button    //*[@id="generic-modal-positive-btn"]
    Set Browser Implicit Wait    3
    Click Button    id=chart-select-questions
    Select Checkbox    id=chart-question-down-checkbox-fDE72D31111AA348
    Select Checkbox    id=chart-question-down-checkbox-f06BD5B17241D826
    Click Button    //*[@id="chart-render-btn"]
    #xaxis
    Select Checkbox    id=chart-question-down-checkbox-fDE72D31111AA348
    Select Checkbox    id=chart-question-down-checkbox-f06BD5B17241D826
    Click Button    id=chart-select-questions
    Select From List By Label    name:legendid    **Favorite Make-up Brand**
    Click Button    //*[@id="chart-render-btn"]
    #Chart Settings (Exclude Non-Response Values)
    Click Button    //*[@id="chart-settings-dropdown"]
    Select Checkbox    id=chart-settings-down-checkbox-excludenull
    Click Button    //*[@id="chart-render-btn"]
    #Chart Settings (Show Average)
    Click Button    //*[@id="chart-settings-dropdown"]
    Select Checkbox    chart-settings-down-checkbox-line-average
    Click Button    //*[@id="chart-render-btn"]
    #Combine fields
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[3]/select    Combine fields
    Click Button    //*[@id="chart-render-btn"]
    #Stack Fields
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/select    Stack Fields
    Click Button    //*[@id="chart-render-btn"]
    Set Browser Implicit Wait    3
    Click Button    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[6]/button
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Bar chart (Choice fields)' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Set Browser Implicit Wait    10
    Click Element    //*[@id="app"]/div/div[1]/div[5]/button
    Select From List By Label    name:form    Make-up Review
    Select From List By Label    name:chartType    Bar chart (Choice fields)
    Click Button    //*[@id="generic-modal-positive-btn"]
    Set Browser Implicit Wait    3
    Click Button    id=chart-select-questions
    Select Checkbox    id=chart-question-down-checkbox-fFC6CA7D9AC985B9
    Select Checkbox    id=chart-question-down-checkbox-fC8A976DAFBF475B
    Click Button    //*[@id="chart-render-btn"]
    #xaxis
    Select From List By Label    name:legendid    Do You use Make-Up
    Click Button    //*[@id="chart-render-btn"]
    #Chart Settings(Exclude Non-Response Values)
    Click Button    //*[@id="chart-settings-dropdown"]
    Select Checkbox    id=chart-settings-down-checkbox-excludenull
    Click Button    //*[@id="chart-render-btn"]
    #Chart Settings(Vertical Bars?)
    Click Button    //*[@id="chart-settings-dropdown"]
    Select Checkbox    chart-settings-down-checkbox-vertical-bars
    Click Button    //*[@id="chart-render-btn"]
    #Combine Fields
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[3]/select    Combine fields
    Click Button    //*[@id="chart-render-btn"]
    #Stack Options
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/select    Stack Options
    Click Button    //*[@id="chart-render-btn"]
    Set Browser Implicit Wait    3
    Click Button    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[6]/button
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Line chart (Numeric fields)' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Set Browser Implicit Wait    10
    Click Element    //*[@id="app"]/div/div[1]/div[5]/button
    Select From List By Label    name:form    Make-up Review
    Select From List By Label    name:chartType    Line chart (Numeric fields)
    Click Button    //*[@id="generic-modal-positive-btn"]
    Set Browser Implicit Wait    3
    Click Button    id=chart-select-questions
    Select Checkbox    id=chart-question-down-checkbox-fDE72D31111AA348
    Select Checkbox    id=chart-question-down-checkbox-f06BD5B17241D826
    #Xaxis
    Select From List By Label    name:legendid    Day when Created
    Click Button    //*[@id="chart-render-btn"]
    #Chart Settings(Exclude Non-Response Values)
    Click Button    //*[@id="chart-settings-dropdown"]
    Select Checkbox    id=chart-settings-down-checkbox-excludenull
    Click Button    //*[@id="chart-render-btn"]
    #Scale
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[2]/select    Date
    Click Button    //*[@id="chart-render-btn"]
    #Combine Fields
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/select    Combine fields
    Click Button    //*[@id="chart-render-btn"]
    Click Button    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[6]/button
    Set Browser Implicit Wait    3
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Line Chart (Choice fields)' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Set Browser Implicit Wait    10
    Click Element    //*[@id="app"]/div/div[1]/div[5]/button
    Select From List By Label    name:form    Make-up Review
    Select From List By Label    name:chartType    Line chart (Choice fields)
    Click Button    //*[@id="generic-modal-positive-btn"]
    Set Browser Implicit Wait    3
    Click Button    id=chart-select-questions
    Select Checkbox    id=chart-question-down-checkbox-fFC6CA7D9AC985B9
    Select Checkbox    id=chart-question-down-checkbox-fC8A976DAFBF475B
    #Xaxis - Day when Created
    Select From List By Label    name:legendid    Day when Created
    Click Button    //*[@id="chart-render-btn"]
    #Xaxis - **Today's Date**
    Select From List By Label    name:legendid    **Today's Date**
    Click Button    //*[@id="chart-render-btn"]
    #Xaxis - Date of signature
    Select From List By Label    name:legendid    Date of signature
    Click Button    //*[@id="chart-render-btn"]
    #Chart Settings(Exclude Non-Response Values)
    Click Button    //*[@id="chart-settings-dropdown"]
    Select Checkbox    id=chart-settings-down-checkbox-excludenull
    Click Button    //*[@id="chart-render-btn"]
    #Scale
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[2]/select    Date
    Click Button    //*[@id="chart-render-btn"]
    #Scale
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[2]/select    Week
    Click Button    //*[@id="chart-render-btn"]
    #Scale
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[2]/select    Month
    Click Button    //*[@id="chart-render-btn"]
    #Scale
    Select From List By Label    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[2]/select    Year
    Click Button    //*[@id="chart-render-btn"]
    Click Button    //*[@id="app"]/div/div[3]/div/div/div[2]/div[1]/div[3]/div[4]/button
    Set Browser Implicit Wait    3
    Click Button    //*[@id="confirm-positive-btn"]

*** Keywords ***
Add Data Point
    Click Element    id=add-poi-dropdown-toggle
    Wait until page does not contain    class=loading-inner
    Click link    xpath://a[text()='Make-up Review']

Login
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Input Text    id=passkey    4!8dt9&#@4xhju2%i4p&
    Click Button    class=btn.btn-primary.btn-sm.login-btn

Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute Javascript    window.scrollTo(${x_location}, ${y_location})
