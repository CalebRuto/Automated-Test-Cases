*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://portal.poimapper.com/login.jsp

*** Test Cases ***
Check on 'Adding Data to Mandatory Fields'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    2500    clear=True
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]
    Set Browser Implicit Wait    10
    Click Button    //*[@id="confirm-positive-btn"]//*[@id="confirm-positive-btn"]

Check on 'Adding Data to form at Random'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    Click Element    //*[@id="F121582E581F133D"]/div[1]/div[4]/img
    #Status
    Click Element    //*[@id="question-Status-option-Approved"]
    #Address
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[7]/div[2]/textarea    Ngei 2 Langata
    #Zip Code
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[10]/textarea    00234
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    2500    clear=True
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Adding Data to form at Random 2'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    Click Element    //*[@id="F121582E581F133D"]/div[1]/div[4]/img
    #Name
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[13]/textarea    Caleb Ruto
    #Satisfied
    Click Element    //*[@id="question-fD27CE8FD57C912E-option-No"]
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    2500    clear=True
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Adding Data at Random 3'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    #Do you use Make-Up?
    Click Element    //*[@id="question-f3F06DBA5F4BA821-option-Yes"]
    Click Element    //*[@id="question-fFC6CA7D9AC985B9-option-Opt58E6B342D419AB3"]
    #How many make-up products do you own?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[29]/input    15
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    1200    clear=True
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Adding Data at Random 4'
    Open browser    https://portal.poimapper.com/    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    #Do you use Make-Up?
    Click Element    //*[@id="question-f3F06DBA5F4BA821-option-Yes"]
    Click Element    //*[@id="question-fFC6CA7D9AC985B9-option-Opt58E6B342D419AB3"]
    #How many make-up products do you own?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[29]/input    15
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    1200    clear=True
    #Favorite Make-Up Brand
    Click Element    //*[@id="question-f62086160D7E259F-option-OptA9758402AE3E372"]
    Click Element    //*[@id="question-fD924CDEEFD3F724-option-OptEEDD7DECCDED7D9"]
    Click Element    //*[@id="question-f26829195FAC1DBA-option-OptB0954D075CCFEA5"]
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Adding Data at Random 5'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    #Do you use Make-Up?
    Click Element    //*[@id="question-f3F06DBA5F4BA821-option-Yes"]
    Click Element    //*[@id="question-fFC6CA7D9AC985B9-option-Opt58E6B342D419AB3"]
    #How many make-up products do you own?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[29]/input    15
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    1200    clear=True
    #Favorite Make-Up Brand
    Click Element    //*[@id="question-f62086160D7E259F-option-OptA9758402AE3E372"]
    Click Element    //*[@id="question-fD924CDEEFD3F724-option-OptEEDD7DECCDED7D9"]
    Click Element    //*[@id="question-f26829195FAC1DBA-option-OptB0954D075CCFEA5"]
    Comment    How Many pieces do you own
    Click Element    //*[@id="question-f149F6C694320783-option-Opt6989F6BFCB6E04E"]
    Select From List By Label    name="f2A66D4B9EEF4240"    6(Six)
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Adding Data at Random 6'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    2500    clear=True
    #What Make-Up Products do you use?
    Click Element    //*[@id="question-f36522B3072FFB5A-option-OptF22A73DB7FFB48C"]
    #Make up prices
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[35]/input    2500
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]
    Set Browser Implicit Wait    10
    Click Button    //*[@id="confirm-positive-btn"]//*[@id="confirm-positive-btn"]

Check on 'Adding Data at Random 7'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    300    clear=True
    #State how many products you own of the same?
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Mascara    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    9
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]
    Set Browser Implicit Wait    10
    Click Button    //*[@id="confirm-positive-btn"]//*[@id="confirm-positive-btn"]

Check on 'Adding Data to form at Random 8'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    439    110
    Click Element    //*[@id="F121582E581F133D"]/div[1]/div[4]/img
    #Status
    Click Element    //*[@id="question-Status-option-Approved"]
    #Address
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[7]/div[2]/textarea    Kasarani
    #Zip Code
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[10]/textarea    00234
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    2500    clear=True
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

Check on 'Adding Data at Random 9'
    Open browser    ${url}    chrome
    Set Browser Implicit Wait    10
    Login
    Wait until page does not contain    class=loading-inner
    Click Element    //*[@id="add-poi-dropdown-toggle"]
    Click Element    //*[@id="add-poi-F121582E581F133D-btn"]
    #Map
    Click Element    //*[@id="F121582E581F133D"]/div[2]/div[1]/div[2]/div[1]/div/a
    Drag and Drop By Offset    //*[@id="F121582E581F133D"]/div[1]/div[4]/div    339    110
    #Do you use Make-Up?
    Click Element    //*[@id="question-f3F06DBA5F4BA821-option-Yes"]
    Click Element    //*[@id="question-fFC6CA7D9AC985B9-option-Opt58E6B342D419AB3"]
    #How many make-up products do you own?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[29]/input    12
    #How much do you use on Make-up in a month?
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[28]/input    1200    clear=True
    #Favorite Make-Up Brand
    Click Element    //*[@id="question-f62086160D7E259F-option-OptA9758402AE3E372"]
    Click Element    //*[@id="question-fD924CDEEFD3F724-option-OptEEDD7DECCDED7D9"]
    Click Element    //*[@id="question-f26829195FAC1DBA-option-OptB0954D075CCFEA5"]
    #Add More Information Below
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[2]/div/textarea    Lipstick    clear=True
    Input Text    //*[@id="app"]/div/div[2]/div/div[2]/div[41]/div[1]/div/table/tbody/tr/td[3]/div/input    4
    Click Button    //*[@id="app"]/div/div[2]/div/div[1]/div[2]/div/div[1]/div/button[1]
    Click Button    //*[@id="confirm-positive-btn"]

*** Keywords ***
Login
    Input Text    id=username    caleb
    Input Text    id=databaseName    test
    Click Button    class=btn.btn-primary.btn-sm.login-btn
    Input Text    id=passkey    4!8dt9&#@4xhju2%i4p&
    Click Button    class=btn.btn-primary.btn-sm.login-btn
