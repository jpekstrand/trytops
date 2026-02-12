*** Settings ***
Documentation    Klara köper biljetter till klassen
Resource    ../Resources/T2.resource


*** Test Cases ***
[T2-TC01] - Första försök av bokning
    Kunden går inn på hemsidan och försöker boka safari

[T2-TC02] - Registrera som användare
    Sen behöver kunden registrera sig

[T2-TC03] - Login som användare
    Och logga in som användare

[T2-TC04] - Boka Safari utan biljetter
   Sen gå tillbaka och försöka boka safari igen

[T2-TC05] - Köp biljett till vuxen
   Sen får felmeddelande och köper biljett til sig själv

[T2-TC06] - Köp biljetter till elever
    Sen köper biljetter till elever

[T2-TC07] - Boka safari med biljetter
    Sen bokar safari med biljetter

[T2-TC08] - Betala för biljetter
    Därefter betalar för biljetter och checkar ut


