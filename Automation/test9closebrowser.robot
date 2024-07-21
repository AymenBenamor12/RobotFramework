


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
 
${browser}  chrome
*** Test Cases ***

closingbrowser
   
   Open Browser  http://www.google.com/  ${browser}
   Maximize Browser Window
   Sleep  3

  Open Browser  http://www.flipkart.com/  ${browser}
   Maximize Browser Window
   Sleep  3

   #Close Browser   #(closing the last one)
   Close All Browsers
   