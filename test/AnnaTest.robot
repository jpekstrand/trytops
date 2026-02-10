*** Settings ***
Resource    ../Resources/Anna.resource
Resource    ../Resources/Common.resource

*** Test Cases ***
köpa biljeter från vip info
    Suite Setup
    Click Element    link:Learn More

misslyckat försök att välja antal biljetter
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    2
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT
Försöker logga in
    Input Text    id:login-username    Anna9
    Input Text    id:login-password    Hejsan123
    Click Button    Login

Registreras som användare
    Click Element    link:Register
    Input Text    id:reg-username    Anna9
    Input Text    id:reg-password    Hejsan123
    Click Button    Register
    Wait Until Page Contains Element    id:register-message
login lyckas
    Click Element    link:Login
    Input Text    id:login-username    Anna9
    Input Text    id:login-password    Hejsan123
    Click Button    Login
    Wait Until Element Is Visible    link:Cart

Försöka att fullfölja köp av biljett
    Set Selenium Speed    0.5
    Click Element    link:Cart
    Click Element    link:Buy Tickets
     Set Selenium Speed    0

Lyckat val av antal biljetter (men blev 12st)
    Wait Until Element Is Visible    id:ticket-quantity
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    12
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

Ta bort fel antal biljetter
    Click Element    link:Cart
    Click Button    Remove
    Click Element    link:Buy Tickets

köp av korrekt antal biljetter
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    2
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT
    Click Element    link:Cart
    Click Element    id:checkout-button
    Handle Alert    action=ACCEPT
