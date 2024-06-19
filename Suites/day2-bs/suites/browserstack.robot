*** Settings ***
Resource             ../pageObjects/testNetworkPageObject/testNetworkPage.robot
Test Setup           Open Browserstack Application
Test Teardown        Close Browserstack Application


*** Test Cases ***
Test Network Should Be Successfuly Connected
    Close Popup By Clicking Ok Button
    Click Test Button
    Verify Network Is Connected