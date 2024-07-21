*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome
*** Test Cases ***

speedtest
    ${speed}  get Selenium Speed  
    Log To Console  ${speed}
   Open Browser  ${url}  ${browser}
   Maximize Browser Window
   Set Selenium Speed   3 seconds


   input text  name:firstname  Coders
   Input Text  name:lastname  Arcade

   Select Radio Button  sex  female
   Select Radio Button   exp  5

   Close Browser

   ${speed}  get Selenium Speed  
    Log To Console  ${speed}