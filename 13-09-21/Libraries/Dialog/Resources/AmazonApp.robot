*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Cart.robot
Resource  ./PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
