*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://facebook.com/
${browser}  chrome

*** Test Cases ***
inputbox
    open browser    ${url}  ${browser}
    maximize browser window
    input text    name:email  ---enter id--
    input text    id:pass   ---enter pass-
    click button    xpath:/html/body/div[1]/div[2]/div[1]/div/div/div/div[2]/div/div[1]/form/div[2]/button
    endpart

*** Keywords ***
endpart
    sleep   10
    sleep   5
    close browser