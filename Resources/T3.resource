*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Common.resource

*** Variables ***

*** Keywords ***
Kund kommer in på första sidan och väljer learn more på VIP tickets
    Suite Setup
    Click Element    link:Learn More

Sen misslyckas kunden att välja antal biljetter
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    2
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

Kunden försöker logga in men kan ej, måste registreras först
    Input Text    id:login-username    Anna9
    Input Text    id:login-password    Hejsan123
    Click Button    Login

Sen registrerar kunden sig
    Click Element    link:Register
    Input Text    id:reg-username    Anna9
    Input Text    id:reg-password    Hejsan123
    Click Button    Register
    Wait Until Page Contains Element    id:register-message

Sen lyckas kunden logga in
    Click Element    link:Login
    Input Text    id:login-username    Anna9
    Input Text    id:login-password    Hejsan123
    Click Button    Login
    Wait Until Element Is Visible    link:Cart

Sen går kund till varukorgen flr att köpa biljetterna men de finns ej kvar
    Set Selenium Speed    0.5
    Click Element    link:Cart
    Click Element    link:Buy Tickets
     Set Selenium Speed    0

Sen väljer kunden antal biljetter, men väljer fel antal
    Wait Until Element Is Visible    id:ticket-quantity
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    12
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

Sen ser kunden att fel antal biljetter har registreras, 12 istället för 2
    Click Element    link:Cart
    Click Button    Remove
    Click Element    link:Buy Tickets

Sen väljer kunden rätt antal biljetter
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    2
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

Sen slutför kunden köpet och checkar ut
    Click Element    link:Cart
    Click Element    id:checkout-button
    Handle Alert    action=ACCEPT
    Suite Teardown

