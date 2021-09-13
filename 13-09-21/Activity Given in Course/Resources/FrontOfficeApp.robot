*** Settings ***
Resource  ./Project/Landing.robot
Resource  ./Project/TopNav.robot
Resource  ./Project/Team.robot

*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page


Go to "Team" Page
    TopNav.Select "Team" Page
    Team.Verify Page

Validate "Team" Page
    Team.Validate Page Contents