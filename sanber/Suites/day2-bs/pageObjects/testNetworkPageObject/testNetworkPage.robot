*** Settings ***
Resource                ../base/base.robot
Variables               testNetwork-locators.yaml

*** Keywords ***
Close Popup By Clicking Ok Button
    Click Element    ${ok_button_update_popup}

Click Test Button
    Click Element    ${test_button}

Verify Network Is Connected
    Wait Until Element Is Visible        ${network_connected_text}
    Element Should Be Visible            ${network_connected_text}
