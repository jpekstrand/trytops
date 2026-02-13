*** Settings ***
Resource    ../Resources/Common.resource

*** Variables ***
${UserN}    Patrik
${PasW}    123456789
*** Keywords ***
#Given
Kunden ska registrera sig
    Suite Setup
    Click Element    link:Register
    Input Text    id:reg-username    ${UserN}
    Input Text    id:reg-password    ${PasW}
    Click Button    Register

#When
Sen loggar kunden in
     Click Element    link:Login
    Input Text    id:login-username    ${UserN}
    Input Text    id:login-password    ${PasW}
    Click Button    Login
    Sleep    5

Sen går kund till biljettsidan
    Click Element    link:Buy Tickets
    Select From List By Label    id:ticket-category    VIP Ticket
    Input Text    id:ticket-quantity    1
    Click Button    Add to Cart
    Handle Alert    action=ACCEPT

Sen går kunden och bokar Safari
     Click Element    link:Book Safaris
    Input Text    id:safari-date    2026
    Press Keys    None    TAB
    Input Text    id:safari-date    05-06
    Select From List By Label      id:safari-type    T-Rex Rumble eXtreme Thrill Pack
    Click Button    id:add-to-cart
    Handle Alert    action=ACCEPT
    Sleep     5

Sen gå och ta bort Vip-biljetten
    Click Element    link:Cart
    Click Button    css=button[onclick="removeFromCart(0)"]

betala för bara Safaribiljetten
    Click Element    id:checkout-button
    Alert Should Be Present    You must have at least one admission ticket in your cart to complete checkout. Safari experiences cannot be purchased without admission tickets.
    Suite Teardown