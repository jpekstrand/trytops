*** Settings ***
Resource    ../Resources/Common.resource

*** Keywords ***

Köpa biljetter till familjen.
    [Documentation]

    Suite Setup
    Click Element    link:Register
    Input Text    id:reg-username    Fabian
    Input Text    id:reg-password    12345678
    Click Button    Register

Logga in på jurastina sidan
    Click Element    link:Login
    Input Text    id:login-username    Fabian
    Input Text    id:login-password    12345678
    Click Button    Login
    Sleep    5
Köpa 4 biljetter av olika typer
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

Betala för sagda biljetter
    Click Element    link:Cart
    Click Element    id:checkout-button
    Handle Alert    action=ACCEPT

