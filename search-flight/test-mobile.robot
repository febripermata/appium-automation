*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}         http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   11.0
${DEVICE_NAME}        Pixel 2 API 30
${APP_PACKAGE}        com.example.myapplication
${APP_ACTIVITY}       com.example.myapplication.MainActivity
${APP}                C:\\Users\\ASUS\\StudioProjects\\mobile-app\\flightApp (2).apk

*** Keywords ***
Open Flight Application
    Open Application        ${REMOTE_URL}    
    ...                     platformName=${PLATFORM_NAME}  
    ...                     platformVersion=${PLATFORM_VERSION}  
    ...                     deviceName=${DEVICE_NAME}  
    ...                     appPackage=${APP_PACKAGE}
    ...                     appActivity=${APP_ACTIVITY}  
    ...                     app=${APP}

Verify Home Screen Appears
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Click Element                locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]       
    Input Text                   locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]        text=support@ngendigital.com

Input Password
    Input Text                   locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]        text=abc123

Click Sign In Button On Login Screen
    Click Element                locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]    

Verify Success Login
    Element Should Be Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Click Search On Home Screen
    Click Element                locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Enter Flight Number
    Input Text                    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=CADX2214

Click Search After Input Number
    Click Element                locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]     

*** Test Cases ***
User should be able to login with valid credential
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username
    Input Password
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search On Home Screen
    Enter Flight Number
    Click Search After Input Number
    # Input username
    # Add other interaction steps as needed
    # For example, select a flight, enter passenger details, etc.
