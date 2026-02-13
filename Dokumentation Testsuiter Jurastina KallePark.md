## <font color="#4f81bd">Dokumentation Testsuiter Jurastina KallePark</font>

Lokal sida testad inför release med Chrome som webbläsare.  

#### <font color="#4f81bd">Dokumentationsmall. </font>

Den här dokumentationen är i första hand till för vår kund Jurastina Kallepark. Vi dokumenterar för att vi ska kunna visa på ett tydligt sätt hur vi har tänkt när vi satte upp vår testdesign, våra testsuiter samt vad vi kom fram till när vi gjorde vår utforskande testning och våra efterföljande rekommendationer.  Dokumentet är till för att kunna läsas av vem som helst, därför håller vi det på en icketeknisknivå.  



#### <font color="#4f81bd">Testdesign och testmål.  </font>

- Vi behöver ta reda på vilka kritiska funktioner som behöver testas i ett första steg.  
    
- Vi använder oss av utforskande testning samt End2End testning utifrån värdeströmmar och användarflöden. För att se så att kritiska funktioner fungerar som de ska.  
    
- Vi kommer dokumentera allt som vår utforskande testning visar på och lägga med våra rekommendationer utifrån vad den utforskande testningen visar. Vi kommer också lägga med våra rekommendationer kring hur man på ett enkelt vis kan förbättra användarvänligheten.  



#### <font color="#4f81bd">Val av Testsuiter och värdeströmmar.</font>  

Vi valde att fokusera på 3 olika värdeströmmar i 3 olika testsuiter, dessa var: 

- Köpa biljetter ur flera olika biljettkategorier (Happy Path).  
    
- Köpa många biljetter för exempelvis en skolklass och lärare. (Critical) 
    
- Navigera sidan och köpa Vipbiljetter snabbt och enkelt. (Functional) 
    
Anledningen till att vi fokuserade på just de här olika värdeströmmarna är för att vi anser att vi täcker in väldigt många olika kundsegment som vi tror skulle vilja besöka parken i och med dessa testsuiter.  




#### <font color="#4f81bd">Testsuitetabeller </font>

<font color="#4f81bd">Nr 1. Köp av flera olika kategorier av biljetter.</font>  

| **<font color="#c00000">Testkod**                                   | **<font color="#c00000">Teststeg </font>**     | **<font color="#c00000">Förväntat resultat</font>**            | **<font color="#c00000">Faktiskt resultat</font>**                                                | **<font color="#c00000">System under test</font>** |
| ------------------------------------------------------------------- | ---------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| **<font color="#c00000">T1-TC01</font>**                            | Kunden är på hemsidan och ska registrea sig    | Givet att man fyller i giltiga uppgifter blir man registrerad. | Man blir registrerad och skickad vidare till logga in                                             | Registrering                                       |
| **<font color="#c00000">T1-TC02</font>**                            | Sen loggar kunden in på Jurastina sidan        | Givet att man fyller i giltiga uppgifter blir man inloggad     | Man blir inloggad                                                                                 | Inloggningen                                       |
| **<font color="#c00000">T1-TC03**                           </font> | Väljer rätt antal biljetter från rätt kategori | Att man ska ha saga biljetter i sin kundkorg.                  | Får upp en notis “items added to cart”. Ser dock ej hur många biljetter förrän man går till cart. | Välja biljetter                                    |
| **<font color="#c00000">T1-TC04</font>**                            | Betala och checka ut för biljetter             | Att betalningen ska gå igenom när man trycker på köpknappen.   | Får upp notis med checkout summary samt totala belopp samt antal och kategori av biljetter.       | Betalningen                                        |

<font color="#4f81bd">Nr 2. Skolklass bokar Safari. </font>

| **<font color="#c00000">Testkod</font>**                            | **<font color="#c00000">Teststeg</font>**                | **<font color="#c00000">Förväntat resultat</font>**                | **<font color="#c00000">Faktiskt resultat</font>**                                               | **<font color="#c00000">System under test</font>** |
| ------------------------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | -------------------------------------------------- |
| **<font color="#c00000">T2-TC01**                           </font> | Kunden går in på hemsidan och försöker boka safari       | Att man kan boka safari                                            | Får upp notis om att man måste vara registrerad för att boka safari                              | Bokningen för Safari                               |
| **<font color="#c00000">T2-TC02</font>**                            | Sen behöver kunden registrera sig                        | Givet att man fyller i giltiga uppgifter blir man registrerad      | Man blir registrerad                                                                             | registreringen                                     |
| **<font color="#c00000">T2-TC03</font>**                            | Loggar in som användare                                  | Givet att man fyller i giltiga uppgifter blir man inloggad.        | Man blir inloggad                                                                                | Inloggningen                                       |
| <font color="#c00000">**T2-TC04**</font>                            | Sen gå tillbaka till bokningssidan och bokar safari igen | Att man får en safaribokning till valt datum i Cart                | Får felmeddelande om att hon måste köpa vanliga biljetter först                                  | Safaribokningen                                    |
| **<font color="#c00000">T2-TC05</font>**                            | Efter felmeddelande, lägger en vuxenbiljett              | Att man ska ha rätt antal biljetter blir tillagda i kundkorgen     | Får upp en notis “items added to cart”. Ser dock ej hur många biljetter förrän man går till cart | Välja biljetter                                    |
| **<font color="#c00000">T2-TC06</font>**                            | Sen lägger till rätt antal biljetter till barn           | Att rätt antal biljetter blir tillagda i kundkorgen                | Får upp en notis “items added to cart”. Ser dock ej hur många biljetter förrän man går till cart | Välja biljetter                                    |
| **<font color="#c00000">T2-TC07</font>**                            | Sen bokar safari                                         | Nu när biljetter är valda så ska Safari kunna väljas till rätt dag | Safaribiljett till rätt safari samt rätt datum läggs till i kundkorgen                           | Safaribokningen                                    |
| **<font color="#c00000">T2-TC08</font>**                            | Betalar för biljetterna och checkar ut                   | Att betalningen ska gå igenom när man trycker på köpknappen.       | Får upp notis med checkout summary samt totala belopp samt antal och kategori av biljetter.      | Betalningen                                        |

<font color="#4f81bd">Nr 3. Stressad kundbeställning</font>

| <font color="#c00000">Testkod</font>     | **<font color="#c00000">Teststeg</font>**                                             | <font color="#c00000">Förväntat resultat</font>                  | <font color="#c00000">Faktiskt resultat</font>                                              | **<font color="#c00000">System under test</font>** |
| ---------------------------------------- | ------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| **<font color="#c00000">T3-TC01</font>** | Kund går in på startsidan och väljer “learn more vip tickets”                         | Att man ska få reda på mer om VIP-biljetter och vad det innebär  | Man kommer till biljettbokningssidan                                                        | Tillstånd och övergångar                           |
| **<font color="#c00000">T3-TC02</font>** | Försöker välja vip-biljetter                                                          | Att rätt antal vip-biljetter läggs till i varukorgen             | Får en pop-up om att man behöver vara inloggad för att välja biljetter.                     | Biljettväljaren                                    |
| **<font color="#c00000">T3-TC03</font>** | Försöker logga in                                                                     | Att man blir inloggad                                            | Får felmeddelandeatt man behöver vara registrerad för att kunna logga in                    | Inloggningen                                       |
| **<font color="#c00000">T3-TC04</font>** | Sen registrerar kunden sig                                                            | Givet att man fyller i giltiga uppgifter så blir man registrerad | Blir registrerad och vidareskickad till login-sidan.                                        | Registreringen                                     |
| **<font color="#c00000">T3-TC05</font>** | Sen lyckas kunden logga in                                                            | Att man blir inloggad                                            | Att man är inloggad                                                                         | Inloggningen                                       |
| **<font color="#c00000">T3-TC06</font>** | Sen går kunden till varukorgen för att köpa biljetter men de finns ej kvar            | Att biljetterna som hon valde innan ska finnas kvar i varukorgen | Varukorgen är Tom                                                                           | Varukorgen                                         |
| **<font color="#c00000">T3-TC07</font>** | Sen väljer kunden VIP-biljetter igen men det blir fel antal                           | Att rätt antal biljetter ska ha valts och lagts i varukorgen     | Tolv biljetter är valda istället för 2                                                      | Biljettväljaren                                    |
| **<font color="#c00000">T3-TC08</font>** | Försöker ta bort 10 av de valda biljetterna men det går ej så behöver ta bort alla 12 | Att man ska kunna ta bort valfritt antal av ens valda biljetter  | Man kan enbart ta bort alla biljetter i en kategori eller inga alls från nämnda kategori.   | Varukorgen                                         |
| **<font color="#c00000">T3-TC09</font>** | Sen väljer kunden rätt antal biljetter                                                | Att rätt antal biljetter ska ha valts och lagts i varukorgen     | Rätt antal biljetter har valts och blivit tillagda i varukorgen                             | Varukorgen                                         |
| **<font color="#c00000">T3-TC10</font>** | Sen slutför kunden köpet och checkar ut                                               | Att betalningen ska gå igenom när man trycker på köpknappen.     | Får upp notis med checkout summary samt totala belopp samt antal och kategori av biljetter. | Betalningen                                        |



#### <font color="#4f81bd">Resultat efter utforskande testning och ytterligare rekommendationer. </font>

Utifrån vad vi hittat i vår utforskande testning samt när vi byggt våra automatiserade tester så har vi följande rekommendationer till er för att göra sidan mer användarvänlig, och locka fler besökare vilket i slutändan leder till större inkomster för er del.  

- HTMLkoden bör uppdateras med ID för varje element, det gör sidan lättare att testa, underhållas samt bli mer robust.  
    
- Sidan bör också byggas om så att den inte har så många övergångar vilket leder till minskad frustration hos slutanvändaren och därigenom nöjdare besökare. 
    
- Sidan bör ha någon form av gästfunktion så man ej behöver vara registrerad eller inloggad för att köpa biljetter.  
    
- Sidan bör lägga till information så att besökare vet i vilken ordning man behöver köpa de olika biljetterna. Samt info kring lösenordslängd.  
    
- Kartan över parken bör göras om så att den blir mer användarvänlig och interaktiv eller tas bort helt.  
    
- De olika rubrikerna på sidan bör ses över, exempelvis så kommer man direkt in på biljetköp när man tror att man ska läsa mer om er VIP-upplevelse. 
    
- Huvudloggan på sidan bör antingen ha en länk så att man kommer till förstasidan eller så bör man ta bort animationen när man hoovrar över den, eftersom det går emot gängse hemsidespraxis.  
    
- Pga att det ej finns ID på alla element var vi tvugna att själva gå in och ändra i koden för ökad testbarhet.  
    
- För att öka sannolikheten att locka dinosaurieintresserade människor så tror vi att det skulle vara fördelaktigt att lägga till mer information om parken samt dinosaurier på hemsidan. Kanske till och med en dinoklubb för barn som gärna vill besöka er tillsammans med sina föräldrar? 
    
- <font color="#c00000">Bugg i Chrome, går att använda 6 siffror istället för 4 när man väljer år under bokning av safaridatum. Denna buggen finns ej i Firefox. Så troligtvis finns den bara i Chromium.  </font>

Vår slutgiltiga rekommendation är att ni antingen går tillbaka till er webbutvecklingspartner med våra fynd och ber de uppdatera sidan enligt ovan nämnda resultat. Ni kan också välja oss, då sätter vi ihop ett team som består av 2 utvecklare samt en testare som garanterat bygger en funktionell och robust hemsida till er på en vecka så den är klar och testad innan ert öppningsdatum.