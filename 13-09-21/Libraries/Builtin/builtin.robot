*** Settings ***
Library  SeleniumLibrary
Documentation  Checking out the built-in library

# Many ways to run:
# robot -d results/built-in tests/Built_in.robot
# robot -d results/built-in -i BuiltIn tests
# robot -d results tests

*** Variables ***
${GLOBAL1} =  I am global variable 1
${SOME_GLOBAL_DATA}

*** Test Cases ***
Declare and set variables
    ${some_test_data} =  Set Variable  This is only available within this test
    Set Test Variable  ${more_test_data}  This is also only available within this test

    # available in all tests in the current set suite
    Set Suite Variable  ${some_suite_data}  This is available within all tests in this suite

    # available in all tests in all suites
    Set Global Variable  ${SOME_GLOBAL_DATA}  This available everywhere

Logging stuff
    [Tags]  BuiltIn
    Comment  ${unset_variable}
    Comment  Just a random comment
    Comment  ${GLOBAL1}
    Log  I have something to say
    Log Many  Say1    Hello 2    Hie 3
    Log to Console  This can only be seen in the console, not the log!
    Log Variables  # this should log all the variables in scope
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

Ignore failures in this test
    [Tags]  BuiltIn
    Open Browser  http://www.amazon.com  chrome

    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}
    Close Browser

Repeat things
    Repeat Keyword  3 Times  Say Something
    Log  ${some_suite_data}
    Log  ${GLOBAL1}
    Log  ${SOME_GLOBAL_DATA}

*** Keywords ***
Say something
    Log  Demo of Builtin Libraries...

