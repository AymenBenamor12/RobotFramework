*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
Suite Setup  Opening my browser
Suite Teardown  closing my browsers
Test Template   Invalid Login
*** Test Cases ***           username                   password
Right user wrong pwd       admin@yourstore.com        xyz  
wrong user Right pwd        ad@yourstore.com          admin
right user empty pwd  admin@yourstore.com      ${EMPTY}
empty user right pwd   ${EMPTY}   admin
wrong user wrong pwd   adm@yourstore.com   xyz   
*** Keywords ***
Invalid Login
   [Arguments]  ${username}  ${password}
   inputing Username  ${username}
   inputing password  ${password} 
   click Login Button
   error message should be visible