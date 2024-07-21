*** Settings ***
Library  SeleniumLibrary

*** Variables *** 

${url}  https://www.google.com/ 
${browser}  chrome
*** Test Cases ***

Google
#   Create web driver  chrome  executable_path="C:\Users\AYMEN\AppData\Local\Programs\Python\Python39\Scripts\chromedriver.exe"
   insidegoogle
*** Keywords ***

insidegoogle
  Open Browser    ${url}  ${browser}
  Maximize Browser Window
  Sleep  10s
  Close Browser