<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" >
	<xsl:output method="html" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<html lang="IT">
			<head>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
				<!--css-->
				<link rel="stylesheet" type="text/css" href="/stile4.css" />
				<!--JQuery-->
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
				<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
				<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js" integrity="sha256-lSjKY0/srUM9BE3dPm+c4fBo1dky2v27Gdjm2uoZaL0=" crossorigin="anonymous"></script>
				<script src="/js/main.js"></script>
			</head>
            <body>
				<nav id ='navbar'>
					<ul>
						<li><a href="#first">Introduzione</a></li>
						<li><a href="#div_giorno_26_12">Testi</a></li>
						<li><a href="#descrizione">Descrizione</a></li>
						<li><a href="#bibliografia">Bibliografia</a></li>
						
					</ul>
				</nav>
				<main id="main">
                    <!-- Informazioni titolo -->
                    <section id="first">
                        <div id="ext">
                            <div id="title-container">
                                <h1 id="main-title"> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='full']"/></h1>
                                <h2 id="sub-title"> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
                                
							</div>    

						</div>
						


						<div class="blog-card" id='primo'>
							<div class="meta">
							  <div class="photo" style="background-image: url(/img/artom.jpg)"></div>
							  <ul class="details">
								<li class="author"><p href="#"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/></p></li>
								<li class="date">03/06/1915 – 07/04/1944</li>
								
								
							  </ul>
							</div>
							<div class="description">
							  <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/></h1>
							  <h2>
								<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/>
							  </h2>
							  <p>
								<xsl:value-of select="tei:TEI/tei:text/tei:back/tei:div/tei:listPerson/tei:person[@xml:id='EA']/tei:note"/>
							</p>
							 
							</div>
						  </div>
						  <div class="blog-card alt">
							<div class="meta">
							  <div class="photo" style="background-image: url(/img/diari.jpg)"></div>
							  <ul class="details">
								<li class="author"><p href="#"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:title"/></p></li>
								<li class="date"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:docDate/tei:date"/></li>
								
								
							  </ul>
							</div>
							<div class="description">
							  <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='full']"/></h1>
							  <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
							  <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history"/></p>
							
							</div>
						  </div>
					
					
					
					
                    </section>
			      <section id ="descrizione">
					<div class="pricing-card standard">
						
						
						<ul class="list_Sx" >
	
							<xsl:apply-templates select="//tei:msDesc" />
							<xsl:apply-templates select="//tei:physDesc" />

						</ul>
						



						
					  </div>
					 
				  </section>
				</main>
				<div class="buttons">
					<button id="cancellatura" class="close">Cancellature</button>
					<button id="correzione" class="close">Correzioni</button>
					<button id="abbreviazione" class="close">Abbreviazioni</button>
					<button id="normalizzazione" class="close">Normalizzazioni</button>
					<button id="aggiunta" class="close">Aggiunte</button>   
					<button id="persona" class="close">Persone</button>
					<button id="luogo" class="close">Luoghi</button>
					<button id="organizzazione" class="close">Organizzazioni</button>
			</div>
			<div class="container">
				<section id="main_section_img">
					
					<div id="div_img">
						
						<div id="photos">
							<xsl:apply-templates select="//tei:facsimile" />
						</div>
						<div id="photos_description">
							
						</div>
						<button class="prev-btn">&lt;</button>
						<button class="next-btn">&gt;</button>
					</div>
					
				</section>
				<section id="main_section_text">
					<!--Giorno 26 dicembre-->
					<div class="div_giorno" id="div_giorno_26_12">
						<h1>26 Dicembre</h1>
						<div class="div_text">
							<xsl:apply-templates select="//tei:ab[@xml:id = 'd26_12']" />
						</div>
					</div>
					<!--Giorno 04 Febbraio-->
					<div class="div_giorno" id="div_giorno_04_02">
						<h1>04 Febbraio</h1>
						<div class="div_text">
							<xsl:apply-templates select="//tei:ab[@xml:id = 'd04_02']" />
						</div>
					</div>
					<!--Giorno 10 Febbraio-->
					<div class="div_giorno" id="div_giorno_10_02">
						<h1>10 Febbraio 1943</h1>
						<div class="div_text">
							<xsl:apply-templates select="//tei:ab[@xml:id = 'd10_02']" />
						</div>
					</div>
                    <!--Giorno 10 Febbraio-->
					<div class="div_giorno" id="div_giorno_10_02-2">
						<h1>10 Febbraio 1943</h1>
						<div class="div_text">
							<xsl:apply-templates select="//tei:ab[@xml:id = 'd10_02-2']" />
						</div>
					</div>
                     <!--Giorno 10 Febbraio-->
					<div class="div_giorno" id="div_giorno_10_02-3">
						<h1>10 Febbraio 1943</h1>
						<div class="div_text">
							<xsl:apply-templates select="//tei:ab[@xml:id = 'd10_02-3']" />
						</div>
					</div>

				</section>

			
			</div>
			<div id='main_liste'>
			<section id="persone" >
				<xsl:apply-templates select="//tei:back/tei:div/tei:listPerson" />
				<div class="note_persona">
					<xsl:apply-templates select="//tei:person/tei:note" />
				</div>
			</section>
<!-- Luoghi -->
			<section id="luoghi" class="list_flex">
				<xsl:apply-templates select="//tei:back/tei:div/tei:listPlace" />
				<div class="note_luogo">
					<xsl:apply-templates select="//tei:place/tei:desc" />
				</div>
			</section>
			<!-- Organizzazioni -->
			<section id="organizzazioni" class="list_flex">
				<xsl:apply-templates select="//tei:back/tei:div/tei:listOrg" />
				<div class="note_organizzazione">
					<xsl:apply-templates select="//tei:org/tei:desc" />
				</div>
			</section>
		
		</div>



          <!-- bibliografia -->
          <section id="bibliografia"> 
            
            <h2>Bibliografia</h2>
            <div class="biblio">
                <xsl:apply-templates select="//tei:listBibl" />
            </div>
        
        </section>


        <!-- footer -->
        <section class="footer">
            <div class="footer-content"> 
            <h2>Informazioni sul progetto</h2>
                <xsl:apply-templates select="//tei:editionStmt"/>
                                              
            </div>
    </section>


			</body>
               
         
		</html>

	</xsl:template>











	<xsl:template match="tei:msDesc">
                <p class='listT'>Descrizione documento</p>
				<li>
					<i class="fa-solid fa-check"></i>
					<strong>Titolo:</strong> <a><xsl:value-of select="tei:msContents/tei:msItem/tei:title"/></a>
				  </li>
                
				  <li>
					<i class="fa-solid fa-check"></i>
					<strong>Autore:</strong> <a> <xsl:value-of select="tei:msContents/tei:msItem/tei:author"/></a>
				  </li>
				  <li>
					<i class="fa-solid fa-check"></i>
					<strong>Lingua:</strong> 
					<a><xsl:value-of select="tei:msContents/tei:msItem/tei:textLang"/></a>
				  </li>
                
				  <li>
					<i class="fa-solid fa-check"></i>
					<strong>Data:</strong> <a><xsl:value-of select="tei:msContents/tei:msItem/tei:docDate"/></a>
				  </li>
				  <li>
					<i class="fa-solid fa-check"></i>
					<strong>Luogo:</strong> <a><xsl:value-of select="tei:msIdentifier/tei:settlement"/></a>, 
					<a><xsl:value-of select="tei:msIdentifier/tei:country"/></a>
				  </li>
                  <li>
					<i class="fa-solid fa-check"></i>
					<strong>Conservazione:</strong><a><xsl:value-of select="tei:msIdentifier/tei:repository"/></a>,
					<a><xsl:value-of select="tei:msIdentifier/tei:collection"/></a>
				  </li>
				  <li>
					<i class="fa-solid fa-check"></i>
					<strong>Codice documento:</strong><a><xsl:value-of select="tei:msIdentifier/tei:repository"/></a>,
					<a><xsl:value-of select="tei:msIdentifier/tei:idno"/></a>
				  </li>
           
               
            
        
    </xsl:template>

    <!-- Descrizione fisica -->
    <xsl:template match="tei:physDesc">
    <p class='listT'>Descrizione Fisica</p>
			<li>
				<i class="fa-solid fa-check"></i>
				<strong>Supporto:</strong><a><xsl:value-of select="tei:msIdentifier/tei:repository"/></a> 
				<a><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:support"/></a>
			  </li>
			  <li>
				<i class="fa-solid fa-check"></i>
				<strong>Pagine:</strong><a><xsl:value-of select="tei:msIdentifier/tei:repository"/></a> 
				<a><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:extent/tei:measure"/></a>
			  </li>
			  <li>
				<i class="fa-solid fa-check"></i>
				<strong>Condizione:</strong>
				<a><xsl:value-of select="tei:objectDesc/tei:supportDesc/tei:condition"/></a>
			  </li>
			  <li>
				<i class="fa-solid fa-check"></i>
				<strong>Mani:</strong><a><xsl:value-of select="tei:msIdentifier/tei:repository"/></a> 
				<a><xsl:value-of select="tei:handDesc/tei:handNote/tei:p"/></a>
			  </li>
			
          
        
    </xsl:template>

    <!-- Storia -->
    <xsl:template match="tei:history">
        <p class="hist"><xsl:value-of select="tei:origin/tei:p"/></p>
    </xsl:template>
	
	
	
	<xsl:template match="tei:facsimile">
        <xsl:for-each select="tei:surface">
            <xsl:element name="img">
                <xsl:attribute name="class">img_class</xsl:attribute>
                <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
                <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
                <xsl:attribute name="alt">Pagina <xsl:value-of select="tei:graphic/@n"/></xsl:attribute>
            </xsl:element>
            <xsl:element name="map">
                <xsl:attribute name="name"><xsl:value-of select="@xml:id" /></xsl:attribute>
                <xsl:variable name="width">
                    <xsl:value-of select="substring-before(tei:graphic/@width, 'px')"/>   
                </xsl:variable>          
                <xsl:variable name="ratio" select="600 div $width"/> 
                <xsl:for-each select="tei:zone[@rendition='line']">
                    <xsl:element name="area">
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="concat(@ulx*$ratio, ',', @uly*$ratio, ',', @lrx*$ratio, ',', @lry*$ratio)"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
                <xsl:variable name="ratio" select="600 div $width"/>
                
                 <xsl:for-each select="tei:zone[@rendition='polygon']">
                    <xsl:variable name="points" select="tokenize(@points, '\s+')"/>
                    
                    <xsl:variable name="scaledPoints">
                        <xsl:for-each select="$points">
                            <!-- Estrai le coordinate x e y -->
                            <xsl:variable name="x" select="substring-before(., ',')"/>
                            <xsl:variable name="y" select="substring-after(., ',')"/>
                            <!-- Calcola le nuove coordinate moltiplicando per la larghezza -->
                            <xsl:variable name="scaledX" select="number($x) * $ratio"/>
                            <xsl:variable name="scaledY" select="number($y) * $ratio"/>
                            <!-- Costruisci la stringa di punti moltiplicati -->
                            <xsl:value-of select="concat($scaledX, ',', $scaledY)"/>
                            <!-- Aggiungi una virgola se non è l'ultimo punto -->
                            <xsl:if test="position() != last()">,</xsl:if>
                        </xsl:for-each>
                      </xsl:variable>
                    <xsl:element name="area">
                        <xsl:attribute name="shape">poly</xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="$scaledPoints"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>



                <xsl:variable name="ratio2" select="650.4 div $width"/> 
                <xsl:for-each select="tei:zone[@rendition='line2']">
                    <xsl:element name="area">
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="concat(@ulx*$ratio2, ',', @uly*$ratio2, ',', @lrx*$ratio2, ',', @lry*$ratio2)"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
                    

                <xsl:variable name="ratio3" select="667 div $width"/> 
                <xsl:for-each select="tei:zone[@rendition='line3']">
                    <xsl:element name="area">
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="concat(@ulx*$ratio3, ',', @uly*$ratio3, ',', @lrx*$ratio3, ',', @lry*$ratio3)"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
                 

                <xsl:variable name="ratio4" select="679.4 div $width"/> 
                <xsl:for-each select="tei:zone[@rendition='line4']">
                    <xsl:element name="area">
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="coords">
                            <xsl:value-of select="concat(@ulx*$ratio4, ',', @uly*$ratio4, ',', @lrx*$ratio4, ',', @lry*$ratio4)"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>



                <xsl:variable name="ratio5" select="660 div $width"/> 
                <xsl:for-each select="tei:zone[@rendition='line5']">
                    <xsl:element name="area">
                        <xsl:attribute name="shape">rect</xsl:attribute>
                        <xsl:attribute name="coords">
          <xsl:sequence></xsl:sequence>                  <xsl:value-of select="concat(@ulx*$ratio5, ',', @uly*$ratio5, ',', @lrx*$ratio5, ',', @lry*$ratio5)"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                            <xsl:value-of select="@xml:id"/>
                        </xsl:attribute>
                        <xsl:attribute name="href">##<xsl:value-of select="@xml:id"/></xsl:attribute>
                    </xsl:element>
                </xsl:for-each>



                
            </xsl:element>
        </xsl:for-each>


    </xsl:template>

	<xsl:template match="tei:ab[@xml:id = 'd26_12']">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:lb">
        <xsl:if test="@rend='double stroke'">
            <span class="aCapo">
                <xsl:text>=</xsl:text>
            </span>
        </xsl:if>
        <xsl:element name="br"></xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="id">
                <xsl:value-of select="substring(@facs, 2, string-length(@facs) - 3)"/>
            </xsl:attribute>
            <xsl:attribute name="class">numero_riga</xsl:attribute>
            <xsl:value-of select="@n" />
            <xsl:text>     </xsl:text>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match = "tei:del">
        <span class = "del" hidden = 'hidden'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "tei:del/tei:gap">
        <span class = "del_gap"> ?
        </span>
    </xsl:template>
    
    <xsl:template match = "tei:choice/tei:abbr">
        <span class = 'abbr'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match = "tei:ab/tei:abbr">
        <span class = 'abbr_1'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match = "tei:persName/tei:abbr">
        <span class = 'abbr_2'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match = "tei:expan">
        <span class = "expan" hidden = 'hidden'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
     <xsl:template match = "tei:reg">
        <span class = 'reg'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match = "tei:orig">
        <span class = "orig" hidden = 'hidden'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match = "tei:corr">
        <span class = 'corr'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match = "tei:sic">
        <span class = "sic" hidden = 'hidden'>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match = "tei:add">
        <span class = "add" >
            <xsl:apply-templates/>
        </span>
    </xsl:template>





	
    <!--persona-->
    <xsl:template match = "tei:persName">
        <span class = "class_persona">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--organizzazione-->
    <xsl:template match = "tei:ab/tei:orgName">
        <span class = "class_org">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!--luoghi-->
    <xsl:template match = "tei:ab/tei:placeName">
        <span class = "class_place">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


	
  




 <!--note person-->
 <xsl:template match = "//tei:person/tei:note">
 <span class = "note_p">
	 <xsl:apply-templates/>
 </span>
</xsl:template>

<!--note luogo-->
<xsl:template match = "//tei:place/tei:desc">
 <span class = "note_l">
	 <xsl:apply-templates/>
 </span>
</xsl:template>

<!--note organizzazione-->
<xsl:template match = "//tei:org/tei:desc">
 <span class = "note_o">
	 <xsl:apply-templates/>
 </span>
</xsl:template>



<xsl:template match="tei:listPerson">
        <h2>Persone</h2>
        
			<ul class='ul-pers'>
           
            <xsl:for-each select="tei:person[position()&gt;=1 and position()&lt;=16]">
                <li class='li-pers'>
                    <span class="person_of_list">
                        <b><xsl:value-of select="tei:persName"/></b>
                    </span>
				</li>
                
            </xsl:for-each>
        </ul>
    </xsl:template>

<!-- Luoghi -->
	<xsl:template match="tei:listPlace">
        <h2>Luoghi</h2>
        <ul class='ul-luo'>
            <xsl:for-each select="tei:place">
                <li class='li-luo'>
                    <span class="place_of_list">
                        <b><xsl:value-of select="tei:placeName">
                        </xsl:value-of>, </b>
                        <xsl:value-of select="tei:country">
                        </xsl:value-of>
                    </span>
                </li>
            </xsl:for-each>
		</ul>  
    </xsl:template>
    
    <!-- Organizzazioni -->
    <xsl:template match="tei:listOrg">
        <h2>Organizzazioni</h2>
        <ul class= 'ul-org'>
            <xsl:for-each select="tei:org">
                <span class="org_of_list">
                    <li class='li-org'>
                        <b><xsl:value-of select="tei:orgName"/></b>
                    </li>
                </span>
            </xsl:for-each>
        </ul>
    </xsl:template>


    
      <!-- Bibliografia -->
      <xsl:template match="//tei:listBibl">
      <div class="biblio">
          <xsl:element name="ul">
              <xsl:for-each select="current()//tei:bibl">
                  <br/>
                  <xsl:element name="li">
                      <xsl:for-each select="tei:author/tei:persName">
                          <xsl:value-of select="."/>,
                      </xsl:for-each>            
                      <xsl:element name="i">                                
                          <xsl:value-of select="tei:title"/>
                      </xsl:element>,
                      <xsl:for-each select="tei:pubPlace">
                          <xsl:value-of select="."/>,
                      </xsl:for-each>
                      <xsl:value-of select="tei:publisher"/>,
                      <xsl:value-of select="tei:date"/>
                  </xsl:element>
              </xsl:for-each>
          </xsl:element>
      </div>
  </xsl:template>

  <!-- FOOTER -->
  
    <!-- Template edition -->
    <xsl:template match="//tei:edition">
      <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <!-- Template date -->
    <xsl:template match="//tei:date">
        <xsl:text> </xsl:text>
        <xsl:value-of select="."/>
    </xsl:template>
    
    <!-- Template respStmt -->
    <xsl:template match="//tei:respStmt">
    <p>
        <xsl:value-of select="tei:resp"/>
        
        <xsl:apply-templates select="tei:name"/>
        <xsl:text>. </xsl:text>
    </p>
    </xsl:template>
    
    <!-- Template name -->
    <xsl:template match="//tei:name">
        <xsl:value-of select="."/>
        <xsl:if test="position() != last()">
            <xsl:text> e </xsl:text>
        </xsl:if>
    </xsl:template>
    
    <!-- Template per gli altri elementi -->
  
    
    





 


    










</xsl:stylesheet>