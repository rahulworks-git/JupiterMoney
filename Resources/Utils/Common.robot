*** Settings ***

Library     JSONLibrary
Library     AppiumLibrary
Library     Process
Resource   ../../AppLocators/CommonAppLocators.robot

*** Keywords ***

Open Jupiter Money App
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  deviceName=${device}  automationName=${appium}  appActivity=${app_activity}  appPackage=${app_package}  appWaitDuration=50000  appWaitForLaunch=true  noReset=False

Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Should Contain Text  ${element}  ${text}

Wait For Element Visibility On Android
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=30

Wait And Click Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Click Element  ${element}

Wait And Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Wait For Element Visibility On Android  ${element}
    Verify Element And Text On Android  ${element}  ${text}    

Verify Page Contains Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}
   
Verify Text is Visible
    [Arguments]  ${text}
    Wait Until Page Contains  ${text}  timeout=30

Verify Element is Visible
    [Arguments]  ${element}
    Wait Until Page Contains Element  ${element}  timeout=60

Verify Element is Enabled
    [Arguments]  ${element}
    Element Should Be Enabled  ${element}  timeout=30

Quit Jupiter Money App
    Quit Application