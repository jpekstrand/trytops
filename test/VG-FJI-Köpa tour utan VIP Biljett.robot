*** Settings ***
#Resource    ../Resources/Common.resource
Resource    ../Resources/VG-FJI.resource
Documentation    Test för att se så det ej går att köpa helgbiljett för safari med standardbiljett
Test Tags    [VG-FJI]     [Negativ Test]


*** Test Cases ***
[VG-FJI-01] - Kunden går in på hemsidan för att registrera sig
    Kunden går in på hemsidan för att registrera sig

[VG-FJI-02] - Och logga in som användare
     Och logga in som användare

[VG-FJI-03] - Sen lägger användare till vanlig biljett i cart
    Sen lägger användare till vanlig biljett i cart

[VG-FJI-04] - Sen försöker användare att boka safari på helgen och får felmeddelande
    Sen försöker användare att boka safari på helgen och får felmeddelande


