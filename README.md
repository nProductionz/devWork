# DevWork

## Introduzione ##

DevWork è un progetto realizzato per il corso di Lab. ASSI (Ing. Informatica e Automatica, anno 2020/21), e si pone come obbiettivo la creazione di una pagina ove diversi utenti possano postare delle commissioni; una serie di utenti speciali, definiti come "Artist", potrà poi avanzare delle proposte per le singole commissioni.

### Users ###

Gli User "base" sono utenti i quali al momento dell'accesso visualizzano la Home Page, dove è riportato l'elenco di tutte le commissioni postate.

Essi potranno dunque da qui aggiungerne di nuove, visualizzare i dettagli delle singole commissioni, filtrarle per categoria oppure visualizzare la lista degli Artists presenti sul sito.

### Artists ###

Gli Artists, a differenza degli utenti base, sono in grado di proporre commissioni nell'apposita area sottostante i dettagli delle stesse. Questa sezione è protetta da autorizzazione, ivi per qui se non si possiede il ruolo di Artist non sarà possibile utilizzarla.

Per diventare Artist, sarà sufficiente compilare un apposito form, potendo passare da User ad Artist.

### Commissioni ###

Le commissioni sono create dagli User, ma possono essere eliminate solo da un Admin.

Queste presentano vari campi da inserire al momento della creazione, tra cui la categoria, il genere, una reference ed eventuali dettagli.

Nella pagina della singola commissione, è presente una zona sottostante accessibile solo agli Artists, dove sarà possibile effettuare delle proposte per la commissione. 


#### Altri dettagli ####

Oltre il classico sistema di Log In, è stato implementato il Log In tramite Google Oauth.
Inoltre, per dare informazioni sulle categorie presenti all'interno del menù di selezione, esiste una pagina apposita dove si invocano le API di Wikipedia, caricando in diretta la relativa pagina dell'enciclopedia online.

#### Test ####

Per i test sono stati utilizzati rispettivamente cucumber e rspec, sistemi richiesti dal docente per mettere alla prova l'app dal punto di vista di funzionalità ed autorizzazioni.