*** Settings ***

Library     AppiumLibrary

*** Variables ***
${START}        QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

Get started
    Wait Until Page Contains    ${START}
    Click Text                  ${START}
    
Navigate to
    [Arguments]              ${item_text}
    ${hamburguer}            Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    ${menuCliqueEmBotoes}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${hamburguer}
    Click Element                    ${hamburguer}

    Wait Until Element Is Visible    ${menuCliqueEmBotoes}
    Click Element                    ${menuCliqueEmBotoes}

Go to item
    [Arguments]                 ${item}    ${checkpoint}
    Wait Until Page Contains    ${item}
    Click Text                  ${item}
    Wait Until Page Contains    ${checkpoint}

Close session
    Close Application