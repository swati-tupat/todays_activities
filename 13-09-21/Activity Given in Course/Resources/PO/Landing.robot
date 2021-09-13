*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LANDING_PAGE_ELEMENT} =    id=mainNav


*** Keywords ***
Navigate To
    go to    ${URL}

Verify Page
    wait until page contains element    ${LANDING_PAGE_ELEMENT}
