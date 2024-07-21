*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
draganddrop
    Open Browser  https://testautomationpractice.blogspot.com/  chrome
    Maximize Browser Window
    Drag And Drop  xpath://div[@id='draggable']   xpath://div[@id='droppable'] 
    Close Browser