*** Settings ***
Documentation    Klara köper biljetter till klassen
Resource    ../Resources/Common.resource
Resource    ../Resources/KlaraTest.resource


*** Test Cases ***
[TCK001] - Första försök av bokning
    Suite Setup
    Första försök av bokning

[TCK002] - Registrera som användare
    Registrera Som Användare

[TCK003] - Login som användare
    Login Som Användare

[TCK004] - Boka Safari utan biljetter
   Boka Safari Utan Biljetter

[TCK005] - Köp biljett till vuxen
   Köp Biljett Till Vuxen


[TCK006] - Köp biljetter till elever
    Köp Biljetter Till Elever

[TCK007] - Boka safari med biljetter
    Boka Safari Med Biljetter
    
    
[TCK008] - Betala för biljetter
    Betala För Biljetter
    Suite Teardown



