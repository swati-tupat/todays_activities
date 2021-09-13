*** Settings ***
Documentation    Talking about this suite.

Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot

Task Setup  Begin test
Task Teardown    End test

*** Variables ***
${BROWSER} =    chrome
${URL} =    https://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
Open Team page
    [Documentation]    Test 1
    log    Executing test 1
    sleep    5
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

Checking Requirements
    [Documentation]    Test 2
    log    Executing test 2
    sleep    5
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page

