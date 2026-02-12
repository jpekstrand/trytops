*** Settings ***
Resource    ../Resources/T1.resource
Test Tags    [Functional]    [Happy Path]    [Critical]

*** Test Cases ***
[T1-TC01] - Kunden är på hemsidan och ska reigstrerar sig
    Kunden är på hemsidan och ska reigstrerar sig

[T1-TC02] - Sen loggar kunden in på jurastina sidan
    Sen loggar kunden in på jurastina sidan

[T1-TC03] - Och väljer rätt antal av biljetter från rätt kategori
    Och väljer rätt antal av biljetter från rätt kategori

[T1-TC04] - Sen betalar kunden för sagda biljetter och checkar ut
    Sen betalar kunden för sagda biljetter och checkar ut
