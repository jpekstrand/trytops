*** Settings ***
Documentation    Första Robot
Library    SeleniumLibrary

*** Variables ***
${URL}    http://127.0.0.1:8000/jurap.html
${BROWSER}    chrome

*** Test Cases ***
Öppna webbläsare
    Set Selenium Speed    0.5
    Open Browser    ${URL}    ${BROWSER}
