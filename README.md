<p align="center"><img src="https://i.imgur.com/K4WiiHZ.png" style="max-width: 20%"></p>

---

<p align="center"><b>JustMeet</b> è un progetto realizzato per l'esame di <b>Ingegneria del Software</b><br> del corso di <b>Laurea in Informatica</b> presso <b>l'Università di Camerino</b>.<br><br> 
<b>Daniele Vallorani</b> | Matricola: <b>099581</b><br>
<b>Davide Calvaresi</b> | Matricola: <b>098381</b><br><br>

# 📖 Vision
Si vuole realizzare una Applicazione Web che permetta l'<b>incontro tra persone</b> al fine di svolgere attività di gruppo, di cooperazione, di gioco, di studio o di qualsiasi tipo di interazione sociale si possa volere. 

L'obiettivo del sistema è dunque permettere a qualsiasi utente, correttamente <b>iscritto</b> alla piattaforma, di <b>creare</b> o <b>partecipare</b> a qualsiasi evento, che sarà visibile in una bacheca apposita.

Ogni creatore di evento e chiunque ne aderisce potrà consultare il <b>luogo</b>, l'<b>ora</b>, il <b>prezzo</b> e gli altri <b>partecipanti</b> all'evento in tempo reale.

# 🔍 Tecnologie utlizzate
Per realizzare l'Applicazione Web è stato usato il framework <b>Spring MVC</b>. Grazie ai pattern MVC i compiti vengono separati verso i componenti Model, View e Controller.

Lato <b>Back-End</b> il linguaggio di programmazione scelto è stato <b>Java</b>.<br>
Lato <b>Front-End</b> vengono caricate dinamicamente pagine <b>HTML</b>, <b>JavaScript</b> e <b>CSS</b>, gestite tramite i <b>JavaServerPage</b>. Tramite l'engine <b>Jasper</b>, Spring riesce a renderizzare le pagine <b>.jsp</b>

Per il Database è stato scelto <b>MySQL</b>. Il DB lavora in locale per lo storage dei dati.

# 🧩 Iterazioni
<b>• Ideazione</b><br>
Nella parte iniziale del progetto abbiamo scelto il tipo di metodologie da utilizzare. Sono stati individuati il linguaggio di programmazione (Java) e gli strumenti piu idonei per il corretto funzionamento e la nostra idea di applicazione. La progettazione e l'implementazione non sono state avviate.<br><br>
<b>• Iterazione 1</b><br>
Nella prima iterazione abbiamo iniziato a creare il sistema con le sue architetture. Abbiamo creato lo UseCase Diagram con gli attori e i casi d'uso. Essendo l'utente il fruitore principale dell'applicazione è stata data precedenza alla creazione del Class Diagram "User" e sono stati creati i Sequence Diagram per il login, logout e la registrazione al sito. Nella prima parte dell'elaborazione del codice sono state implementate le classi relative all'Utente (User, UserController, UserRepository, UserService e l'UserValidator) con le prime bozze di metodi. Inoltre abbiamo elaborato le classi WebApplication e WebSecurityConfig per l'avvio e la sicurezza di navigazione dell'applicazione.<br><br>
<b>• Iterazione 2</b><br>
Nella seconda iterazione è stato data importanza all'elemento su cui ruotano le interazioni tra gli utenti, ovvero gli Eventi. Per fare ciò è stato modificato il Class Diagram in modo tale che la classe User e Event comunicassero in maniera corretta tramite associazioni. Sono state create quindi le classi Event con i relativi attributi, EventController per la gestione, EventRepository e EventService per le funzioni, e EventValidator per il corretto inserimento dei dati. Inoltre sono stati creati i Sequence Diagram relativi alle tre principali azioni che l'utente può fare con un evento, ovvero la Creazione, la Modifica e l'Eliminazione, più una bozza per la gestione della Scadenza dell'evento. Sono stati aggiunti dettagli allo UseCase Diagram e sono state create per la parte front-end le prime bozze di pagine con cui interagisce l'utente.<br><br>
<b>• Iterazione 3</b><br>
Nella terza iterazione sono stati apportati piccoli aggiornamenti allo UseCase Diagram (aggiunta meccanica dell'interazione tra utente e organizzatore evento), e perfezionato il Class Diagram di User-Event. Sono stati creati i Sequence Diagram relativi alla modifica dell'account utente, la gestione della prenotazione e la relativa partecipazione a un evento creato da altri. In questa iterazione è stata data importanza al miglioramento dell'interfaccia grafica dell'applicazione. Sono stati aggiunti dettagli e creata la pagina dove reindirizzare l'utente in caso di errori.<br><br>
<b>• Iterazione 4</b><br>
Nella quarta e ultima iterazione sono state definiti gli ultimi dettagli per lo UseCase Diagram e il Class Diagram. Sono state create le Sequence Diagram realative alla visualizzazione dei partecipanti agli eventi, l'eliminazione dell'account e perfezionato la gestione della scadenza degli eventi. Sono state inoltre creati dei diagrammi relativi agli account pubblicitari e la loro gestione che però non sono state poi integrate nel codice. Sono state ottimizzate le interfacce con cui interagisce l'utente e definiti gli ultimi dettagli e finezze grafiche per rendere l'applicazione più fruibile possibile.

# 💡Estensioni e idee
Per perferzionare l'applicazione in futuro proponiamo l'aggiunta effettiva dell'account commerciale e un gestore per le inserzioni. Per la privacy si pensava ad un sistema in grado di far scegliere all'utente quale inforamazioni rendere pubbliche e quali no.
Dal punto di vista degli eventi una possibile estensione può essere l'integrazione di un sistema di mappe per localizzare meglio il luogo. Inoltre si pensava di aggiungere una sorta di chat o un sistema di commenti sotto agli eventi per permettere agli utenti di chiedere pubblicamente informazioni, e con un conseguente sistema di notifiche. Molte di queste idee erano nei piani del gruppo, ma per tempistiche non sono state poi effettivamente aggiunte al progetto.

# 🧑🏻‍💻 Autori e responsabilità
<b>• @Vallo22 - Daniele Vallorani</b><br>
<b>• @DavideCalvaresi - Davide Calvaresi</b>