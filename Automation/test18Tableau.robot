*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
TableauValidation
   Open Browser  http://testautomationpractice.blogspot.com/  chrome
   Maximize Browser Window
   ${rows}  Get Element Count  xpath://table[@name='BookTable']/tbody/tr  
   ${columns}  Get Element Count  xpath://table[@name='BookTable']/tbody/tr/th

   Log To Console  number of rows= ${rows}
   Log To Console  number of columns= ${columns}

    ${data1}  Get Text   xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    ${data2}  Get Text   xpath://table[@name='BookTable']/tbody/tr[4]/td[3]


    log to console  data 1 = ${data1}
    log to console  data 2 = ${data2}

    Table Column Should Contain    xpath://table[@name='BookTable']    1    BookName
    Table Row Should Contain    xpath://table[@name='BookTable']    5   Mukesh
    Table Cell Should Contain    xpath://table[@name='BookTable']    6    2    Amod
    Table Header Should Contain   xpath://table[@name='BookTable']    Price 

    Close Browser