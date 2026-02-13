*** Settings ***
Resource    ../Resources/KanInteKöpaSafariUtanBiljettPatrikVg.resource
Library    SeleniumLibrary


*** Test Cases ***
#Given
[VG-PE-1] Kunden Besöker hemsidan och registrerar sig
    Kunden ska registrera sig    

#When
[VG-PE-2] Sen loggar kunden in som användare och blir inloggad
    Sen loggar kunden in

[VG-PE-3] Sen går kund till biljettsidan och köper Vip-biljett
    Sen Går Kund Till Biljettsidan

[VG-PE-4] Sen går kunden och bokar Safari till rätt valt datum
    Sen Går Kunden Och Bokar Safari

[VG-PE-5]Sen går kunden och tar bort Vip-biljetten från varukorgen
     Sen Gå Och Ta Bort Vip-biljetten

#Then
[VG-PE-6]Ska ej gå att betala för bara Safaribiljetten när Vip-biljetten är borta
    Betala För Bara Safaribiljetten