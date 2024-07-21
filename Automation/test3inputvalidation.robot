*** Settings ***

Library  SeleniumLibrary

*** Variables ***

${url}  https://flipkart.com
${browser}  chrome

*** Test Cases ***
ValidationTest
  open browser  ${url}  ${browser}
  Sleep  5s
#   Wait Until Page Contains   ${url} 
  Maximize Browser Window
  Title Should Be  Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
  Click Element  xpath://*[@id="container"]/div/div[1]/div/div/div/div/div[1]/div/div/div/div[1]/div[1]/header/div[2]/div[2]/div/div/div/div
  ${input_txt}  Set Variable  xpath://*[@id="container"]/div/div[3]/div/div[2]/div/form/div[1]/input
  Element Should Be Enabled  ${input_txt}
  Element Should Be Visible  ${input_txt}
  sleep  3s
  Input Text  xpath://*[@id="container"]/div/div[3]/div/div[2]/div/form/div[1]/input  aymen.bnamor96@gmail.com
  Sleep  3s
  Clear Element Text  xpath://*[@id="container"]/div/div[3]/div/div[2]/div/form/div[1]/input
  sleep  3s
  Close Browser 
*** Keywords ***
