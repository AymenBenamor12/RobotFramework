*** Settings ***

Library  SeleniumLibrary
*** Variables ***
${URL}    https://robotframework.org/

*** Test Cases ***

WindowsClose 
   Open Browser  ${URL}  chrome
   Maximize Browser Window
   Sleep  3s
  
  
   Click Link   //*[@id="app"]/div[4]/div[3]/div[2]/div[3]/div/div[2]/div[1]/div[1]/a
   Sleep  3s 
   Switch Window  Robot Framework 
   Sleep  3s
   Close Window
    Sleep  3s

    Close Browser