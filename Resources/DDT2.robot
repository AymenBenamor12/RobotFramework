*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Resources.robot
Library   DataDriver   ../Resources/Data.xlsx  file_format=xlsx  sheet_name=Feuil1
Suite Setup  Opening my browser
Suite Teardown  closing my browsers
Test Template  Invalid Login
# Library    RPA.Excel.Files 
*** Test Cases ***
LoginTestUsingExcel    ${username}  ${password} 

*** Keywords ***
Invalid Login
   [Arguments]  ${username}  ${password}
   inputing Username  ${username}
   inputing password  ${password} 
   click Login Button
   error message should be visible