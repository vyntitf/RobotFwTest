*** Settings ***
Library    Selenium2Library    
Library    OperatingSystem    

*** Variables ***
${BROWSER}                    chrome
${URL}                        http://google.com

*** Keywords ***
Open Homepage
    Open Browser    ${URL}    ${BROWSER}

# Just for reference, not use
Setup Chromedriver
    Set Environment Variable    webdriver.chrome.driver    F:\OneDrive\Software\RobotFramework\chromedriver.exe