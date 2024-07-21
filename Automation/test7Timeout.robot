*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome
*** Test Cases ***

speedtest
   
   Open Browser  ${url}  ${browser}
   Maximize Browser Window
   Set Selenium Timeout  10 seconds
   Wait Until Page Contains   practice Form  # 5 seconds 


   input text  name:firstname  Coders
   Input Text  name:lastname  Arcade

   Select Radio Button  sex  female
   Select Radio Button   exp  5

   Close Browser

   