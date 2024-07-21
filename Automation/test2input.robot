*** Settings ***
Library  SeleniumLibrary


*** Variables *** 

${url}  https://www.google.com/ 
${browser}  chrome
*** Test Cases ***

InputBox
  Open Browser    ${url}  ${browser}
  Maximize Browser Window
  Sleep  2s
  Scroll Element Into View    xpath://*[@id="L2AGLb"]/div
  Sleep  2s
  Click Element  xpath://*[@id="L2AGLb"]/div
  Input Text   xpath://*[@id="APjFqb"]    Amazon
  Click Button  xpath://html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[4]/div[6]/center/input[1]
  Sleep  2s
  Clear Element Text  xpath://*[@id="APjFqb"]
  Sleep  2s
  Input Text  xpath://*[@id="APjFqb"]  facebook
  Click Button  xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
  Sleep  2s 
  Close Browser
*** Keywords ***

