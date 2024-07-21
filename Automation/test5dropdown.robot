*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome
*** Test Cases ***

dropdown
   Open Browser  ${url}  ${browser}
   Maximize Browser Window
   
   # selecting from dropdown menu
   Select From List By Label  contients   Asia
   Sleep  5s
   Select From List By Index  contients  6
   Sleep  5s
   Select From List By Value  contients  

   Close Browser 

*** Keywords ***