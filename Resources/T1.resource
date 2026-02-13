*** Settings ***
Resource    ../Resources/Common.resource
Library    SeleniumLibrary

*** Variables ***
${UserN}    Fabian
${PasW}    12345678

*** Keywords ***
#GIVEN
Kunden är på hemsidan och ska reigstrerar sig
    Suite Setup
    Click Element    link:Register
    Input Text    id:reg-username    ${UserN}
    Input Text    id:reg-password    ${PasW}
    Click Button    Register

#WHEN
Sen loggar kunden in på jurastina sidan
    Click Element    link:Login
    Input Text    id:login-username    ${UserN}
    Input Text    id:login-password    ${PasW}
    Click Button    Login
    Sleep    5

#THEN
Och väljer rätt antal av biljetter från rätt kategori
    Click Element    link:Buy Tickets
    Select From List By Label    id:ticket-type    Adult
    Input Text    id:ticket-quantity    2
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT
    Select From List By Label    id:ticket-type    Senior
    Input Text    id:ticket-quantity    1
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT
    Select From List By Label    id:ticket-type    Child
    Input Text    id:ticket-quantity    1
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

#andTHEN
Sen betalar kunden för sagda biljetter och checkar ut
    Click Element    link:Cart
    Click Element    id:checkout-button
    Handle Alert    action=ACCEPT
    Suite Teardown

