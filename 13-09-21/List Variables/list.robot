*** Settings ***

*** Variables ***
@{cred} =   swati    1234    mumabi
@{address} =    shahad    Thane    Maharashtra

*** Test Cases ***
login credentials
    log     @{cred} [0]
    log     @{cred} [1]
    log    @{cred} [2]

Address details
    log     I am @{address} [0]
    log     District is @{address} [1] and state is @{address} [2]