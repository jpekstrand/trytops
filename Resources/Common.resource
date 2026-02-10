*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Suite Setup
    Open Browser    http://127.0.0.1:8000/jurap.html    chrome
    Maximize Browser Window

Suite Teardown
    Close Browser