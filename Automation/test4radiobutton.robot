*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome
*** Test Cases ***
 checking radio buttons and check boxes
   Open Browser  ${url}  ${browser}
   Maximize Browser Window
   Set Selenium Speed  2seconds
  # Selecting the radio buttons we use : select radio button  name_button  value_button
   Select Radio Button  sex  female
   Select Radio Button  exp  6

  # Selecting check boxes
   Select Checkbox    BlackTea
   Select Checkbox   oolongtea

   Unselect Checkbox    BlackTea

   Close Browser