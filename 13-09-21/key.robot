*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Test case 1
    Do first
    Do second

Test case 2
    Do second

*** Keywords ***
Do first
    log    "hello"
Do second
    log    "swati"

Do something
    Open browser    https://www.google.com
    sleep   5