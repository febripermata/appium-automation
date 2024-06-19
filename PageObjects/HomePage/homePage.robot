*** Settings ***
Documentation        Segala hal yg berkaitan dengan homepage
Resource             ../base.robot


*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]


Verify Success Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
