*** Settings ***
Documentation    Filip Isberg VG uppgift :)
Resource    Common.resource

*** Variables ***
${UserN}    dinoLover
${PasW}    IloveDinos4Eva!

*** Keywords ***
#GIVEN
Kunden går in på hemsidan för att registrera sig
    Suite Setup
    Click Element    link:Register
    Input Text    id:reg-username    ${UserN}
    Input Text    id:reg-password    ${PasW}
    Click Button    Register

#WHEN
Och logga in som användare
    Click Element    link:Login
    Wait Until Element Is Visible    id:login-username
    Input Text    id:login-username    ${UserN}
    Input Text    id:login-password    ${PasW}
    Click Button    Login
    Sleep    5

#THEN
Sen lägger användare till vanlig biljett i cart
    Click Element    link:Buy Tickets
    Select From List By Label    id:ticket-type    Adult
    Select From List By Label    id:ticket-category    Regular Ticket
    Input Text    id:ticket-quantity    2
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

#andTHEN
Sen försöker användare att boka safari på helgen och får felmeddelande
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    02-21
    Select From List By Label      id:safari-type      T-Rex Rumble
    Click Button    id:add-to-cart
    Page Should Contain    VIP tickets required to book safaris on weekends.

