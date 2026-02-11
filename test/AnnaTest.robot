*** Settings ***
Resource    ../Resources/Anna.resource
Resource    ../Resources/Common.resource

*** Test Cases ***
[TCA001] köpa biljeter från vip info
    köpa biljeter från vip info

[TCA002] misslyckat försök att välja antal biljetter
    misslyckat försök att välja antal biljetter

[TCA003] Försöker logga in
    Försöker logga in

[TCA004] Registreras som användare
    Registreras som användare

[TCA005] login lyckas
    login lyckas

[TCA006] Försöka att fullfölja köp av biljett
    Försöka att fullfölja köp av biljett

[TCA007] Lyckat val av antal biljetter (men blev 12st)
    Lyckat val av antal biljetter (men blev 12st)

[TCA008] Ta bort fel antal biljetter
    Ta bort fel antal biljetter

[TCA009] köp av korrekt antal biljetter
    köp av korrekt antal biljetter

[TCA010] Slutför köp igenom Cart
    Slutför köp igenom Cart

