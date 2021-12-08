*** Settings ***

Resource    ../Resources/Utils/Common.robot
Resource    ../Resources/Utils/LandingPage.robot
Resource    ../AppLocators/CommonAppLocators.robot
Test Setup  Open Jupiter Money App
Test Teardown  Quit Jupiter Money App

*** Test Cases ***

#settings flow
Verify Change MPIN Functionality
    Verify Landing Page