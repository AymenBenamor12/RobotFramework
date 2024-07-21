*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

alertwindow    
   Open Browser  https://testautomationpractice.blogspot.com/  chrome
   Click Button  //*[@id="HTML9"]/div[1]/button[2]

   Alert Should Be Present  Press a button!
    sleep  10s 
    Handle Alert  accept
   #Handle Alert  dismiss
   
   Alert Should Not Be Present  Press a button!

   Close Browser