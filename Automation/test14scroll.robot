*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***

scrollTest
    Open Browser   https://en.wikipedia.org/wiki/Main_Page  chrome
    Maximize Browser Window
    Sleep   3
    # Execute Javascript  window.scrollTo(0,1500) 
    # Scroll Element Into View  xpath://*[@id="mp-tfp"]/table/tbody/tr/td[1]/span/a/img

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight) 
    sleep  2
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight) 
