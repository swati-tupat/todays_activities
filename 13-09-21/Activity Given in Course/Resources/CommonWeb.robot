*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin test
    Open Browser    https://www.robotframeworktutorial.com/front-office/     ${BROWSER}
    maximize browser window

End test
    close browser