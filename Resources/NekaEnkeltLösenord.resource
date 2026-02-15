*** Settings ***
Resource    ../Resources/Common.resource
*** Variables ***
${USERNAME}    Anna9
${PASSWORD}    123

*** Keywords ***
Sen registrerar kunden sig
    Click Element    link:Register
    Input Text    id:reg-username    ${USERNAME}
    Input Text    id:reg-password    ${PASSWORD}
    Click Button    Register
    Wait Until Page Contains Element    id:register-message

Kontrollera att lösenordet blir nekat
    Wait Until Page Contains    Password must be at least 8 characters long.