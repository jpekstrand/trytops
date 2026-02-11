*** Settings ***
Resource    ../Resources/Fabian.resource
Test Tags    [Functional]    [Happy Path]    [Critical]

*** Test Cases ***
[TCF001] - Köpa biljetter till familjen.

    Köpa Biljetter Till Familjen.

[TCF002] - Logga in på jurastina sidan
    Logga In På Jurastina Sidan

[TCF003] - Köpa 4 biljetter av olika typer
    Köpa 4 Biljetter Av Olika Typer

[TCF004] - Betala för sagda biljetter
    Betala För Sagda Biljetter