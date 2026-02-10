*** Settings ***
Documentation    Klara köper biljetter
Library    SeleniumLibrary
Resource    ../Resources/Common.resource


*** Test Cases ***
Första försök av bokning
    Suite Setup
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    03-05
    Select From List By Label      id:safari-type      Herbivore Tour
    Click Button    id:add-to-cart
    Handle Alert    action=ACCEPT
    Sleep     5

Registrera som användare
    Click Element    link:Register
    Input Text    id:reg-username    KlaraLärare
    Input Text    id:reg-password    Minaeleverärbäst!
    Click Button    Register
    Sleep    5

Login som användare
    Input Text    id:login-username    KlaraLärare
    Input Text    id:login-password    Minaeleverärbäst!
    Click Button    Login
    Sleep    5

Boka Safari utan biljetter
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    05-03
    Select From List By Label      id:safari-type      Herbivore Tour
    Click Button    id:add-to-cart
    Sleep     5

Köp biljett till vuxen
    Click Element    link:Buy Tickets
    Select From List By Label    id:ticket-type    Adult
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    1
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT


Köp biljetter till elever
    Select From List By Label    id:ticket-type    Child
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    26
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

Boka safari med biljetter
    Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    05-03
    Select From List By Label      id:safari-type      Herbivore Tour
    Click Button    id:add-to-cart
    Handle Alert    action=ACCEPT
    Sleep     5
    
    
Betala för biljetter
    Click Element     link:Cart
    Click Element    id:checkout-button
    Handle Alert    action=ACCEPT
    
    



