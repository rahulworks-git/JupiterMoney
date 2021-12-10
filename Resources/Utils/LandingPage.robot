*** Settings ***
Library    AppiumLibrary
Resource   Common.robot

*** Keywords ***

Verify Landing Page
    Wait Until Page Contains    Jupiter Staging  timeout=30
    Click Text    While using the app
    Wait And Click Element On Android  xpath=//android.view.ViewGroup[6]/android.view.ViewGroup/android.widget.TextView
    Wait And Click Element On Android  xpath=//android.view.ViewGroup[5]/android.view.ViewGroup/android.widget.TextView
    Wait And Click Element On Android  xpath=//android.widget.Button[@text="Allow"]
    Wait And Click Element On Android  xpath=//android.widget.Button[@text="Allow"]
    Wait Until Page Contains    Verify  timeout=30
    Enter Mobile Number
    Wait And Click Element On Android  xpath=//android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView
    Wait And Click Element On Android  xpath=//android.widget.TextView[@text="Verify"]
    Wait And Click Element On Android    xpath=//android.widget.TextView[@text = "Alright"]
    # Wait And Click Element On Android    xpath=(//android.widget.LinearLayout/android.widget.ImageView)[2] #for Send SMS func
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Continue"]  timeout=50
    Wait And Click Element On Android    xpath=//android.widget.TextView[@text="Continue"]
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Recent transactions"]   timeout=250
    Capture Page Screenshot    Home.png


Enter Mobile Number
    Press Keycode  15
    Press Keycode  14
    Press Keycode  15
    Press Keycode  15
    Press Keycode  12
    Press Keycode  10
    Press Keycode  14
    Press Keycode  15
    Press Keycode  16
    Press Keycode  9

