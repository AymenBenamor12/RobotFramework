*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
Browsercommands
    Open Browser  https://www.google.com/  chrome
    Maximize Browser Window
    Sleep   3

    Go To  https://www.yahoo.com/

    Sleep  3s

    Go Back
    Sleep  3
    Close Browser

