*** Settings ***
Library           AppiumLibrary

*** Variables ***
${BROWSERSTACK_URL}                           http://${BROWSERSTACK_USERNAME}:${BROWSERSTACK_ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${BROWSERSTACK_USERNAME}                      
${BROWSERSTACK_ACCESS_KEY}                    
${BROWSERSTACK_PLATFORM_NAME}                 Android
${BROWSERSTACK_PLATFORM_VERSION}              9.0
${BROWSERSTACK_DEVICE_NAME}                   Google Pixel 3
${BROWSERSTACK_APP}                           
${BROWSERSTACK_JOB_NAME}                      RobotFramework
${BROWSERSTACK_BUILD_NAME}                    single_test

*** Keywords ***
Open Browserstack Application
    Open Application            remote_url=${BROWSERSTACK_URL}
    ...                         name=${BROWSERSTACK_JOB_NAME}
    ...                         build=${BROWSERSTACK_BUILD_NAME}
    ...                         platformName=${BROWSERSTACK_PLATFORM_NAME}
    ...                         platformVersion=${BROWSERSTACK_PLATFORM_VERSION}
    ...                         deviceName=${BROWSERSTACK_DEVICE_NAME}
    ...                         app=${BROWSERSTACK_APP}

Close Browserstack Application
    Close Application 
