*** Settings ***
Library    Selenium2Library
#Library    SeleniumLibrary        

*** Test Cases ***
测试自动化打开百度
    Open Browser    http://www.baidu.com    browser=Google Chrome
    Sleep    2 
    Input Text    //*[@id="kw"]    robotFramwork
    Sleep    3    
    Click Button    //*[@id="su"]
    Sleep    5                
    Close Browser
   