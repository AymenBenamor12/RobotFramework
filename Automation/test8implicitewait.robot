


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome
*** Test Cases ***

speedtest
   
   Open Browser  ${url}  ${browser}
   Maximize Browser Window
   
   ${wait}  Get Selenium Implicit Wait
   log to console   ${wait}

   Set Selenium Implicit Wait  10 seconds
   ${wait}  Get Selenium Implicit Wait
   log to console   ${wait}


   input text  name:firstname  Coders
   Input Text  name:lastname  Arcade

   Select Radio Button  sex  female
   Select Radio Button   exp  5

   Close Browser

   