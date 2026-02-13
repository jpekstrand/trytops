*** Settings ***
Resource    ../Resources/T3.resource
Test Tags    [Functional]    [Critical]


*** Test Cases ***
[T3-TC01] - Kund kommer in på startsidan och väljer learn more på VIP tickets
    Kund kommer in på startsidan och väljer learn more på VIP tickets

[T3-TC02] - Försöker välja VIP-Biljetter
    Försöker välja VIP-Biljetter

[T3-TC03] - Kunden försöker logga in men kan ej, måste registreras först
    Kunden försöker logga in men kan ej, måste registreras först

[T3-TC04] - Sen registrerar kunden sig
    Sen registrerar kunden sig

[T3-TC05] - Sen lyckas kunden logga in
    Sen lyckas kunden logga in

[T3-TC06] - Sen går kund till varukorgen flr att köpa biljetterna men de finns ej kvar
    Sen går kund till varukorgen flr att köpa biljetterna men de finns ej kvar

[T3-TC07] - Sen väljer kunden antal biljetter, men väljer fel antal
    Sen väljer kunden antal biljetter, men väljer fel antal

[T3-TC08] - Sen ser kunden att fel antal biljetter har registreras, 12 istället för 2
    Sen ser kunden att fel antal biljetter har registreras, 12 istället för 2

[T3-TC09] - Sen väljer kunden rätt antal biljetter
    Sen väljer kunden rätt antal biljetter

[T3-TC10] - Sen slutför kunden köpet och checkar ut
    Sen slutför kunden köpet och checkar ut

