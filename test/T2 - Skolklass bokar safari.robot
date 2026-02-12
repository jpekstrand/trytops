*** Settings ***
Documentation    Klara köper biljetter till klassen
Resource    ../Resources/T2.resource


*** Test Cases ***
[T2-TC01] - Kunden går inn på hemsidan och försöker boka safari
    Kunden går inn på hemsidan och försöker boka safari

[T2-TC02] - Sen behöver kunden registrera sig
    Sen behöver kunden registrera sig

[T2-TC03] - Och logga in som användare
    Och logga in som användare

[T2-TC04] - Sen gå tillbaka och försöka boka safari igen
   Sen gå tillbaka och försöka boka safari igen

[T2-TC05] - Sen får felmeddelande och köper biljett til sig själv
   Sen får felmeddelande och köper biljett til sig själv

[T2-TC06] - Sen köper biljetter till elever
    Sen köper biljetter till elever

[T2-TC07] - Sen bokar safari med biljetter
    Sen bokar safari med biljetter

[T2-TC08] - Därefter betalar för biljetter och checkar ut
    Därefter betalar för biljetter och checkar ut


