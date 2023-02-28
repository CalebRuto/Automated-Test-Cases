*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://portal.poimapper.com/login.jsp

*** Test Cases ***
Check on 'Add Data Point Button' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]

Check on 'Save' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Save and New
    Click Element    id=save-btn
    Click Element    id=save-new
    Wait until page contains element    xpath://button[text()='Save']
    Click Button    id=confirm-positive-btn

Check on 'Save and View' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Click Element    id=save-btn
    Set Browser Implicit Wait    10
    Click Element    id=save-view
    Click Button    id=confirm-positive-btn

Check on Save as Draft Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Click Element    id=save-btn
    Set Browser Implicit wait    10
    Click Element    id=save-draft
    Click Button    id=confirm-positive-btn

Check on Field Types (Text, Integer, real number)
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Name Field
    Page should contain    Name    10
    Set Browser Implicit wait    10
    Input Text    name=Name    Form Name
    #Text Field
    Page should contain    State your name    10
    Set Browser Implicit wait    10
    Input Text    name=f4E294777C4FBE17    TestPOI
    #Integer Field
    Page should contain    How much do you use on Make-up in a month?    10
    Set Browser Implicit wait    10
    Input Text    name=fDE72D31111AA348    1200.10
    #Real Number
    Page should contain    How many make-up products do you own    10
    Set Browser Implicit wait    10
    Input Text    name=f06BD5B17241D826    8
    Element Should Contain    //*[@id="app"]/div/div[2]/div/div[2]/div[31]/span    1208.1
    Sleep    3s
    Clear element text    name=f4E294777C4FBE17
    #Label Field
    Set Browser Implicit wait    10
    Page Should Contain    Fill in the Make-up details section    10

Check on Single Select Question Functionality
    Open Browser    ${url}    chrome
    Maximize browser window
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Scroll Page to Location    0    2800
    sleep    4s
    Page should contain radio button    Maybelline
    Click element    id=question-f62086160D7E259F-option-Opt392ED8FB64BD538
    sleep    3s
    Click element    id=question-f62086160D7E259F-option-Opt392ED8FB64BD538
    sleep    3s
    Click element    id=question-f62086160D7E259F-option-Opt81F2B8CF420F54E

Check on 'Multiselect' Functionality
    Open Browser    ${url}    chrome
    Maximize browser window
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Scroll Page to Location    0    3200
    sleep    3s
    Page should Contain    What Make-Up Products do you use
    Click element    id=question-f36522B3072FFB5A-option-Opt1603A223E7FBD23
    sleep    3s
    Click element    id=question-f36522B3072FFB5A-option-Opt46822C7C062786F
    sleep    3s
    Click element    id=question-f36522B3072FFB5A-option-Opt1603A223E7FBD23

Check on 'Boolean Question' Functionality
    Open Browser    ${url}    chrome
    Maximize browser window
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Scroll Page to Location    0    1000
    Sleep    3s
    Click element    id=question-fD27CE8FD57C912E-option-Yes
    Sleep    3s
    Click element    id=question-fD27CE8FD57C912E-option-No

Check on 'Likert Scale' Functionality
    Open Browser    ${url}    chrome
    Maximize browser window
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Scroll Page to Location    0    1000
    Sleep    3s
    Select from list by value    name=f2A66D4B9EEF4240    OptDAB5A4C9976565F

Check on 'Time and Date' Fields
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Check on Time
    Page should contain    State the Time?
    Input Text    name=fB2DA56A8BB67126    13:00
    Input Text    name=fBF9093A783F6722    08/06/2020

Check on 'Calculated Value' Functionality
    Open Browser    ${url}    chrome
    Maximize Browser window
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Calculated Value within Main Form
    page should contain    State your age
    Input Text    name=f999AF94C9F2659F    23
    Page should contain    Age + 1
    page should contain    24
    #Calculated Value From Main Form To Subform
    Page should contain    Add A Subform Here
    Click Button    class=btn.btn-primary.part-of-btn
    Page should Contain    display age
    Page should contain    26
    #Calculated Value From Subform To Main Form
    Input Text    name=f93593CFB6AD5873    2
    Sleep    5s
    Click Button    //*[@id="generic-modal-positive-btn"]

Check on 'Skip Question' Functionality

Check on 'Mandatory Field' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Maximize browser window
    Scroll element into view    name=f999AF94C9F2659F
    sleep    3s
    Page Should Contain    State your age
    Clear Element Text    name=f999AF94C9F2659F
    Sleep    3s
    Click button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Sleep    3s
    Click button    //*[@id="generic-modal-positive-btn"]

Check on 'Default Value' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Check on Default Value
    Page Should Contain    How many make-up products do you own
    Element Should Contain    //*[@id="app"]/div/div[2]/div/div[2]/div[30]/input    20
    Should end with    name=f06BD5B17241D826    20

Check on 'Subfrom' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Check on Subfrom Functionality
    Page Should Contain    Add A Subform Here
    Click Button    class=btn.btn-primary.part-of-btn
    #Check on Subform 'Save' Button
    Click Button    //*[@id="generic-modal-positive-btn"]
    #Check on Subform 'Cancel' Button
    Set Browser Implicit Wait    10
    Click Button    class=btn.btn-primary.part-of-btn
    Wait until element is visible    id=generic-modal-negative-btn
    Click Button    id=generic-modal-negative-btn

Check on 'Task form' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    #Check on Task Form Functionality
    Page Should Contain    Another Task
    Click Button    class=btn.btn-primary.part-of-btn
    #Check on Taskfrom 'Save' Button
    Click Button    id=generic-modal-positive-btn
    #Check Task Form 'Cancel' Button
    Wait until element is visible    class=btn.btn-primary.part-of-btn
    Click Button    class=btn.btn-primary.part-of-btn
    Wait until element is visible    id=generic-id=modal-negative-btn
    Click Button    id=generic-modal-negative-btn

Check on 'Email Field' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Scroll element into view    name=f19E36FBB3FE444B
    Page should contain    Email Address
    Input text    name=f19E36FBB3FE444B    lorraine@gmail.com
    Element Text Should Match    name=f19E36FBB3FE444B    ?@

Check on 'Hidden in SIV field' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Element Should not be visible    name=f6F404505946C8CA

Check on 'Lookup Value' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Sleep    3s
    Scroll Page to location    0    3700
    Page should Contain    Make up prices
    Sleep    4s
    Page should contain    Nars
    Input Text    name=fB6496B3A07053B8    Nars
    Sleep    2s
    Click Element    label=Nars

Check on 'Subquestions' Functionality
    Open Browser    ${url}    chrome
    Maximize browser window
    Set Browser Implicit wait    10
    Login
    Add Data Point
    Scroll Page to Location    0    2800
    sleep    4s
    Click element    id=question-f62086160D7E259F-option-OptA9758402AE3E372
    sleep    2s
    Click element    id=question-fD924CDEEFD3F724-option-OptEEDD7DECCDED7D9
    sleep    3s
    Click element    id=question-f26829195FAC1DBA-option-OptF36F6E1D9A9E72B
    sleep    2s
    Click Element    id=question-f2D2AA91EB4E7441-option-Yes
    Sleep    2s
    Click Element    id=question-f26829195FAC1DBA-option-OptF36F6E1D9A9E72B
    Sleep    2s
    Click Element    id=question-f62086160D7E259F-option-Opt81F2B8CF420F54E
    sleep    2s
    Click Element    id=question-f62086160D7E259F-option-OptA9758402AE3E372
    List should have no selections    id=question-fD924CDEEFD3F724-option-OptEEDD7DECCDED7D9

Check on 'Label Field' Functionality

Check on 'Share button' Functionality
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    class=fa.fa-filter
    sleep    2s
    Click Element    id=form-filter-F121582E581F133D
    Click Element    class=fa.fa-filter
    Page should contain    Map
    sleep    2s
    Click Element    class=fa.fa-map-o
    Click Element    class=leaflet-marker-icon.leaflet-zoom-animated.leaflet-interactive
    sleep    2s
    Click Element    class=fa.fa-search
    sleep    3s
    Click Button    class=btn.btn-primary.btn-sm

Check on 'Copy Button' Functionality

Check on 'Delete Button' Functionality

Check on 'Comments Button' Functionality

Check on 'Export Button' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Click Button    id=export-data-action-btn
    Select From List By Label    name:form    Make-up Review
    Select From List By Label    name:exportType    Excel (Opens with Office 2007 and newer versions. Suits huge forms and data)
    Select Checkbox    name:applylocationfilters
    Select Checkbox    name:applydatefilters
    Select Checkbox    name:applyuserfilters
    Execute Javascript    document.getElementsByClassName('font-lato')[0].style.display = 'none'
    Click Button    id=generic-modal-positive-btn
    Sleep    3s
    Select Frame    id=d0FMDfx-1604474304605
    Click Link    Save
    Unselect Frame

Check on 'Table' Functionality
    Open Browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Set Browser Implicit Wait    10
    Click Button    id=chart-btn-toggle
    Select Checkbox    id=form-filter-F121582E581F133D
    Sleep    3s
    Click Button    id=chart-select-questions
    Select Checkbox    id=table-question-down-checkbox-f06BD5B17241D826
    Select Checkbox    id=table-question-down-checkbox-f62086160D7E259F

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
