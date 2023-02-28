*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${deviceName}     RF8M42NHXMP
${platformName}    android
${appPackage}     com.sec.android.app.popupcalculator
${appActivity}    com.sec.android.app.popupcalculator.Calculator
${noReset}        True
${platformVersion}    11
${ensureWebviewsHavePages}    True

*** Test Cases ***
Calculator Tests
    Open Application    ${REMOTE_URL}    deviceName=${deviceName}    platformName=${platformName}    appPackage=${appPackage}    appActivity=${appActivity}    noReset=${noReset}    platformVersion=${platformVersion}    ensureWebviewsHavePages=${ensureWebviewsHavePages}
    # accessibility id=1
    Click Element    com.sec.android.app.popupcalculator:id/calc_keypad_btn_01
    # accessibility id=Plus
    Click Element    com.sec.android.app.popupcalculator:id/calc_keypad_btn_add
    # accessibility id=2
    Click Element    com.sec.android.app.popupcalculator:id/calc_keypad_btn_02
    # accessibility id=5
    Click Element    com.sec.android.app.popupcalculator:id/calc_keypad_btn_05
    # accessibility id=Equal
    Click Element    com.sec.android.app.popupcalculator:id/calc_keypad_btn_equal
