*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
Mouseacion
    Open Browser  https://testautomationpractice.blogspot.com/  chrome
    Maximize Browser Window
    Open Context Menu  xpath://button[contains(text(),'Confirm Box')]
    Double Click Element  xpath://button[normalize-space()='Copy Text']
    Sleep  3
    Close Browser