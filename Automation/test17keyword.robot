*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}  https://testautomationpractice.blogspot.com/
${url2}  https://www.google.com/
${browser}  chrome
*** Test Cases ***
 practiceform
    ${pageTitle1}  launchbrowser   ${url1}  ${browser}
    Log To Console  ${pageTitle1}
    Log  ${pageTitle1}
    inputingvalues 
   ${pageTitle2}  launchbrowser   ${url2}  ${browser}
     Log To Console  ${pageTitle2}
     log  ${pageTitle2}
    Close All Browsers

*** Keywords ***
launchbrowser
  [Arguments]    ${weburl}   ${webbrowser}
  Open Browser  ${weburl}   ${webbrowser}
    Maximize Browser Window
    ${title}  Get Title
    [Return]   ${title}
inputingvalues    
    Input Text   xpath://input[@id='name']  Coders
    Input Text   xpath://input[@id='email']   aymen.bnamor96@gmail.com