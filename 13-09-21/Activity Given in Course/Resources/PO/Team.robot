*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TEAM_HEADER} =    css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***

Verify Page
    wait until page contains element    ${TEAM_HEADER}

Validate Page Contents
    element text should be  ${TEAM_HEADER}   OUR AMAZING TEAM    ignore_case = true
