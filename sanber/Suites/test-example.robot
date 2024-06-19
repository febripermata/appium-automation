*** Settings ***
# digunakan untuk import file lain
Library        AppiumLibrary

*** Variables ***
# untuk mendefinisikan variabel yang digunakan dalam test case/keyword
${ADMIN_TEXT}               admin
${PASSWORD_TEXT}            password

*** Keywords ***
# untuk mendefinisikan keyword
Input Username
    Input Text                    locator=//*[@id="username"]        text=${ADMIN_TEXT}

Input Password
    Input Text                    locator=//*[@id="password"]        text=${PASSWORD_TEXT}

Click Login Button
    Click Element                 locator=//*[@id="login-btn"]

Verify Success Login
    Element Should Be Visible     locator=//*[@id="error-msg"]

Login with valid credential
    Input Username
    Input Password
    Click Login Button
    Verify Success Login

*** Test Cases ***
# untuk menuliskan test case
User should be able to login with valid credential
    # Input username
    # Input password
    # Click login button
    # Verify success login
    Login with valid credential
    
    
    
    
