
*** Settings ***
Library    SeleniumLibrary  implicit_wait=20.0

*** Test Cases ***

open browser
    open browser    https://www.amazon.in/    chrome
    maximize browser window

    #validating the page
    wait until page contains    Mobiles

    #search
    input text    id=twotabsearchtextbox    tshirts
    click button    id=nav-search-submit-button

    #validating the proper results
    wait until page contains    results for "t-shirts"

    #select the link
    click link    class:'s-image'
    wait until page contains    Back to results

