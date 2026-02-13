*** Settings ***
Resource    Common.resource
Library    SeleniumLibrary

*** Variables ***
${UserN}   KlaraLärare
${PasW}    Minaeleverärbäst!

*** Keywords ***
#GIVEN
Kunden går inn på hemsidan och försöker boka safari
    Suite Setup
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    03-05
    Select From List By Label      id:safari-type      Herbivore Tour
    Click Button    id:add-to-cart
    Handle Alert    action=ACCEPT

#THEN
Sen behöver kunden registrera sig
    Click Element    link:Register
    Input Text    id:reg-username    ${UserN}
    Input Text    id:reg-password    ${PasW}
    Click Button    Register

#andTHEN
Och logga in som användare
    Click Element    link:Login
    Wait Until Element Is Visible    id:login-username
    Input Text    id:login-username    ${UserN}
    Input Text    id:login-password    ${PasW}
    Click Button    Login
    Sleep    5

#andTHEN
Sen gå tillbaka och försöka boka safari igen
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    05-03
    Select From List By Label      id:safari-type      Herbivore Tour
    Click Button    id:add-to-cart
    Sleep     5

#andTHEN
Sen får felmeddelande och köper biljett til sig själv
    Click Element    link:Buy Tickets
    Select From List By Label    id:ticket-type    Adult
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    1
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

#andTHEN
Sen köper biljetter till elever
    Select From List By Label    id:ticket-type    Child
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    26
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

#andTHEN
Sen bokar safari med biljetter
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    05-03
    Select From List By Label      id:safari-type      Herbivore Tour
    Click Button    id:add-to-cart
    Handle Alert    action=ACCEPT
    Sleep     5

#andTHEN
Därefter betalar för biljetter och checkar ut
    Click Element     link:Cart
    Click Element    id:checkout-button
    Handle Alert    action=ACCEPT
    Suite Teardown
