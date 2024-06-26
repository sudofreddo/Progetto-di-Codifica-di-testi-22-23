# Progetto di Codifica dei Testi 2022-2023

Questo repository contiene il progetto di Codifica dei Testi svolto da Leonardo Lelli (619972) e Lara Controne (654489).

## Descrizione del Progetto

Il progetto riguarda l'analisi e una codifica image-based di 5 pagine appartenenti ai Diari del Partigiano ebreo Emanuele Artom per il corso di Codifica di testi del professor Angelo Mario Del Grosso, nell'anno accademico 2022-2023, all'interno del CdL di Informatica Umanistica.

## Struttura della cartella Codifica

- `diario8.xml`: File contenente l'annotazione xml vera e propria, validato con Xerces https://xerces.apache.org/
- `diario.xsl`: File XSLT che contiene istruzioni per trasformare un documento XML nel nostro output.html, contenuto nella cartella xsl-out.
- `tei_all.dtd`: Il documento DTD (Document Type Definition) che definisce la struttura e la validità di un documento XML. Elenca gli elementi, gli attributi e le regole che i documenti XML devono seguire per 
                 essere considerati validi secondo quel tipo di documento. Nel documento la DTD è basata sullo standard TEI
- `js`: Cartella contenente il file JQuery per aggiungere il frontend al nostro output.html
- `xsl-out`: Cartella di destinazione per il nostro output XSL
- `img`: Cartella contenente le immagini
- `stile.css`: Foglio di stile per il nostro output.html


## Comandi

### Validazione con Xerces

 java -cp "xerces-2_12_1/*" dom.Counter -v ../ProgettoCodifica/Codifica/diario8.xml 

### Generazione html con Saxon

java -jar saxon-ee-12.4.jar -s:src/diario.xml -xsl:src/diario.xsl -o:src/xsl-out/output.html


## Autori

- Leonardo Lelli
- Lara Controne
