*** Settings ***
Library        ../Library/Util.py

*** Test Cases ***
Example
    ${result}=  Get Random Emails
    log  result: ${result}
