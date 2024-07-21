*** Settings ***
Library   SeleniumLibrary

*** Variables ***

${url}  https:/admin-demo.nopcommerce.com/
${browser}  chrome

*** Keywords ***
Opening my browser 
        
  Open Browser  ${url}  ${Browser}
  Maximize Browser Window

closing my browsers
   Close All Browsers

Login into page
   
   go to   ${url}  

inputing Username
    [Arguments]     ${username} 
      Input Text   xpath://input[@id='Email']  ${username}       

inputing password
    [Arguments]     ${password} 
      Input Text   xpath://input[@id='Password']  ${password}  

click Login Button
   Click Element   xpath://button[normalize-space()='Log in']

click log out Button
   Click Link  Logout 

error message should be visible 
  Page Should Contain  Login was unsuccessful.        


Dashboard page should be visible 
   Page Should Contain   Dashboard  
