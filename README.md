# Progetto di Codifica dei Testi 2022-2023

Questo repository contiene il progetto di Codifica dei Testi svolto da Leonardo Lelli (619972) e Lara Controne (654489).

## Descrizione del Progetto

Il progetto riguarda l'analisi e una codifica image-based di 5 pagine appartenenti ai Diari del Partigiano ebreo Emanuele Artom.

## Struttura della cartella Codifica

- `diario.xml`: File contenente l'annotazione xml vera e propria, validato con Xerces https://xerces.apache.org/
- `codifica.xsl`: File XSLT che contiene istruzioni per trasformare un documento XML nel nostro output.html, contenuto nella cartella xsl-out.
- `tei_all.dtd`: Il documento DTD (Document Type Definition) che definisce la struttura e la validità di un documento XML. Elenca gli elementi, gli attributi e le regole che i documenti XML devono seguire per 
                 essere considerati validi secondo quel tipo di documento. Nel documento la DTD è basata sullo standard TEI
- `js`: Cartella contenente il file JQuery per aggiungere il frontend al nostro output.html
- `xsl-out`: Cartella di destinazione per il nostro output XSL
- `img`: Cartella contenente le immagini
- `stile.css`: Foglio di stile per il nostro output.html
- `README.md`: Questo file README che fornisce informazioni sul progetto.

## Comandi

### Validazione con Xerces

 java -cp "xerces-2_12_1/*" dom.Counter -v ../ProgettoCodifica/Codifica/diario8.xml 

### Generazione html con Saxon

java -jar saxon-ee-12.4.jar -s:Codifica/diario.xml -xsl:diario.xsl -o:Codifica/xsl-out/output.html


## Autori

- Leonardo Lelli
- Lara Controne
