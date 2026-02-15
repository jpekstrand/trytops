*** Settings ***
Documentation    Liam Bred VG uppgift. Test för att se till så att lösenordet blir nekat ifall det är för kort när man registrerar sig.
Resource    ../Resources/NekaEnkeltLösenord.resource
Test Tags    [VG-LB]    [negativ test]

*** Test Cases ***
#Given
[VG-LB-1] Kunden är på startsidan
    Suite Setup
#When
[VG-LB-2] Kunden resgestrerar sig
    Sen registrerar kunden sig
#Then
[VG-LB-3] Kontrollera att lösenordet blir nekat
    Kontrollera att lösenordet blir nekat