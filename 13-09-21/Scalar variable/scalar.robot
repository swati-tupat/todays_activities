*** Settings ***

*** Variables ***
${url}  browser
${name}     swati
${var}      ltts

*** Test Cases ***
variable demonstration
    log     ${url}
    log     scalar variable is ${url}

demo2
    log     my name is ${name}

demo3
    log     i am ${name}
    log     and i am a ${var} intern.

