*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
 screenrobot
       open browser  https://www.google.com//  chrome
       Maximize Browser Window

     Scroll Element Into View    xpath://*[@id="L2AGLb"]/div
    Sleep  2s
  Click Element  xpath://*[@id="L2AGLb"]/div
       Capture Element Screenshot   xpath://*[@id="hplogo"]   cup.png
       Capture Page Screenshot     website.png

       Close Browser