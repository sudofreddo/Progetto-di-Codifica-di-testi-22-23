$(document).ready(function(){
    
        $('.close').click(function() {
          $(this).toggleClass('clicked');
        });
     
   
        /*normalizzazioni, correzioni, abbreviazioni*/
      
        $('.reg').on('click', function() {
            var $this = $(this);
            var correction = $(this).next('.orig').text();
             // Verifica se l'elemento è già stato espanso
             if ($this.data('expanded')) {
                // Se è già stato espanso, ripristina il testo originale
                $this.text($this.data('originalText'));
                $this.removeData('expanded');
            } else {
                // Altrimenti, memorizza il testo originale e mostra la correzione
                $this.data('originalText', $this.text());
                $this.text(correction);
                $this.data('expanded', true);
            }
      
        
        });
           //errori
        $('.corr').on('click', function() {
            // Ottieni il testo dell'elemento nascosto con classe "orig"
            
            var $this = $(this);
            var correction = $(this).prev('.sic').text();
            
            // Verifica se l'elemento è già stato espanso
            if ($this.data('expanded')) {
                // Se è già stato espanso, ripristina il testo originale
                $this.text($this.data('originalText'));
                $this.removeData('expanded');
            } else {
                // Altrimenti, memorizza il testo originale e mostra la correzione
                $this.data('originalText', $this.text());
                $this.text(correction);
                $this.data('expanded', true);
            }
        });
            // Sostituisci il testo dell'elemento con il testo della correzione
      

        $('.abbr').on('click', function() {
            // Ottieni il testo dell'elemento nascosto con classe "orig"
          
            var $this = $(this);
            var correction = $this.next('.expan').text();
            
            // Verifica se l'elemento è già stato espanso
            if ($this.data('expanded')) {
                // Se è già stato espanso, ripristina il testo originale
                $this.text($this.data('originalText'));
                $this.removeData('expanded');
            } else {
                // Altrimenti, memorizza il testo originale e mostra la correzione
                $this.data('originalText', $this.text());
                $this.text(correction);
                $this.data('expanded', true);
            }
        });


      


        


        
        
        
       
    
            //caratteristiche
        $(".inside_desc").hide();
        $("#car1").click(function(){
                $(".inside_desc").toggle("slow");
        });
            
        //descrizione fisica
        $(".inside_desc_fis").hide();
        $("#car2 ").click(function(){
                $(".inside_desc_fis").toggle("slow");
        });
        
        //storia editoriale
        $(".hist").hide();
        $("#car3 ").click(function(){
                $(".hist").toggle("slow");
        });
    
        // Correzioni
        $("#correzione").click(function(){
            
            if ($(".corr").is(":visible")) {
                if ($(".corr").css('background-color') == 'rgb(255, 0, 0)') {
                    $(".corr").css('background-color', 'transparent');
                    $(".corr").click(function(){
                        $(".sic").css('background-color', 'transparent');
                    })
                } else {
                    $(".corr").css('background-color', 'red');
                    $(".corr").click(function(){
                        $(".sic").css('background-color', 'red');
                    })
                }
            
            } if ($(".sic").is(":visible")) {
                if ($(".sic").css('background-color') == 'rgb(255, 0, 0)') {
                    $(".sic").css('background-color', 'transparent');
                    $(".sic").click(function(){
                        $(".corr").css('background-color', 'transparent');
                    })
                } else {
                    $(".sic").css('background-color', 'red');
                    $(".sic").click(function(){
                        $(".corr").css('background-color', 'red');
                    })
                }
            } 
        });
    
        // Normalizzazioni
        $("#normalizzazione").click(function(){
            if ($(".reg").is(":visible")) {
                if ($(".reg").css('background-color') == 'rgb(103, 125, 125)') {
                    $(".reg").css('background-color', 'transparent');
                    $(".reg").click(function(){
                        $(".orig").css('background-color', 'transparent');
                    })
                } else {
                    $(".reg").css('background-color', 'rgb(103, 125, 125)');
                    $(".reg").click(function(){
                        $(".orig").css('background-color', 'rgb(103, 125, 125)');
                    })
                }
            
            } if ($(".orig").is(":visible")) {
                if ($(".orig").css('background-color') == 'rgb(103, 125, 125)') {
                    $(".orig").css('background-color', 'transparent');
                    $(".orig").click(function(){
                        $(".reg").css('background-color', 'transparent');
                    })
                } else {
                    $(".orig").css('background-color', 'green');
                    $(".orig").click(function(){
                        $(".reg").css('background-color', 'green');
                    })
                }
            } 
        });
    
        // Abbreviazioni
       

        $("#abbreviazione").click(function(){
            if ($(".abbr").is(":visible")) {
                if ($(".abbr").css('background-color') == 'rgb(90, 214, 125)') {
                    $(".abbr").css('background-color', 'transparent');
                    $(".abbr").click(function(){
                        $(".expan").css('background-color', 'transparent');
                    })
                } else {
                    $(".abbr").css('background-color', 'rgb(90, 214, 125)');
                    $(".abbr").click(function(){
                        $(".expan").css('background-color', 'rgb(90, 214, 125)');
                    })
                }
            
            } if ($(".expan").is(":visible")) {
                if ($(".expan").css('background-color') == 'rgb(90, 214, 125)') {
                    $(".expan").css('background-color', 'transparent');
                    $(".expan").click(function(){
                        $(".abbr").css('background-color', 'transparent');
                    })
                } else {
                    $(".expan").css('background-color', 'green');
                    $(".expan").click(function(){
                        $(".abbr").css('background-color', 'green');
                    })
                }
            } 
        });
    








    
        // Aggiunte
        $("#aggiunta").click(function(){
            if ($(".add").css('background-color') == 'rgb(255, 215, 0)') {
                    $(".add").css('background-color', 'transparent');       
            } 
            else{
                $(".add").css('background-color', 'rgb(255, 215, 0)'); 
            }
            
        });
    
        // Cancellature
        $("#cancellatura").click(function(){ 
            if ($(".del").is(":visible")) { 
                $(".del").hide();
                $(".del").css('background-color', 'transparent');
            } else {
                $(".del").show();
                $(".del").css('background-color', 'violet');
            }
        });
    
        // Persona
        $("#persona").click(function(){ 
            if ($(".class_persona").css('background-color') == 'rgb(91, 217, 243)') {
                $(".class_persona").css('background-color', 'transparent');
                $(".class_persona").css('padding', '0px');       
            } 
            else{
                $(".class_persona").css('background-color', 'rgb(91, 217, 243)');
                $(".class_persona").css('padding', '11px');
            }
        });
    
        // Organizzazioni
        $("#organizzazione").click(function(){ 
            if ($(".class_org").css('background-color') == 'rgb(230, 129, 33)') {
                $(".class_org").css('background-color', 'transparent'); 
                $(".class_org").css('padding', '0px');      
            } 
            else{
                $(".class_org").css('background-color', 'rgb(230, 129, 33)'); 
                $(".class_org").css('padding', '11px');
            }
        });
    
        // Luogo
        $("#luogo").click(function(){ 
            if ($(".class_place").css('background-color') == 'rgb(90, 226, 170)') {
                $(".class_place").css('background-color', 'transparent'); 
                $(".class_place").css('padding', '0px');      
            } 
            else{
                $(".class_place").css('background-color', 'rgb(90, 226, 170)'); 
                $(".class_place").css('padding', '11px');
            }
        });
        

        $(".note_p").css("display", "none");
        var note_persone=$(".note_p").toArray();
        var i;
        
        $(".person_of_list").click(function(){
            var index_clicked= $(".person_of_list").index(this);
            for (i=0; i<note_persone.length; i++){
                note_persone[i].style.display = "none";
            }
            note_persone[index_clicked].style.display = "block";
        });
    
        /*note luogo*/
        $(".note_l").css("display", "none");
        var note_luogo=$(".note_l").toArray();
        var j;
        
        $(".place_of_list").click(function(){
            var index_clicked2= $(".place_of_list").index(this);
            for (j=0; j<note_luogo.length; j++){
                note_luogo[j].style.display = "none";
            }
            note_luogo[index_clicked2].style.display = "block";
        });
    
        /*note organizzazione*/
        $(".note_o").css("display", "none");
        var note_org=$(".note_o").toArray();
        var z;
        
        $(".org_of_list").click(function(){
            var index_clicked3= $(".org_of_list").index(this);
            for (z=0; z<note_org.length; z++){
                note_org[z].style.display = "none";
            }
            note_org[index_clicked3].style.display = "block";
        });






        $("area").click(function(){

             var areaId = $(this).attr('id');

            var textId = areaId.slice(0, -2);
          

            $('.numero_riga').removeClass('added');
            
            $('#' + textId).addClass('added');


            

            
      
           
           
        })



})


$("#dayNav").click(function() {
    console.log('cccc')
    // Previeni il comportamento predefinito del link
   
    
    // Ottieni l'id della sezione dalla parte finale dell'href del link cliccato
    var targetId = $(this).attr("href").substring(1);
    
    // Trova l'elemento del carosello corrispondente all'id della sezione
    var sezioneCorrispondente = $("#" + targetId);

    // Scorrimento verso la sezione desiderata
    if (sezioneCorrispondente.length) {
        $("html, body").animate({
            scrollTop: sezioneCorrispondente.offset().top
        }, 1000); // Tempo di animazione: 1000 millisecondi (1 secondo)
    }
});


document.addEventListener('DOMContentLoaded', function() {
    console.log('siii')
    const prevBtn = document.querySelector('.prev-btn');
    const nextBtn = document.querySelector('.next-btn');
    const cont = document.getElementById('photos_description')
    const desc_pag = document.querySelectorAll('.desc_pag')
    const images = document.getElementById('photos');
    const imageWidth = document.getElementById('photos').clientWidth;
    const num = document.querySelectorAll('.img_class')
    const giorni = document.querySelector('.giorni');
    divgiorno = document.querySelectorAll('.div_giorno')
    function showGiorno(index) {
         divgiorno.forEach((giorno, i) => {
            if (i === index) {
                giorno.classList.add('active');
            } else {
                giorno.classList.remove('active');
            }
        });
    }
    const descriptions = [
        "Pagina 94",
        "Pagina 154",
        "Pagina 155",
        "Pagina 156",
        "Pagina 157"

    ];
    
    let currentIndex = 0;
    const para= document.createElement('p')
    cont.appendChild(para)
    para.classList.add('desc_pag')
    para.innerHTML= String(descriptions[currentIndex])
      

   
    

    prevBtn.addEventListener('click', function() {
        currentIndex = (currentIndex - 1 + num.length) % num.length;
        updateCarousel();
        
    showGiorno(currentIndex);
    });

    nextBtn.addEventListener('click', function() {
        currentIndex = (currentIndex + 1) % num.length;
        updateCarousel();
        showGiorno(currentIndex);
    });

    updateCarousel()
    function updateCarousel() {
        const offset = -currentIndex * imageWidth;

       console.log(images)
     
        images.style.transform = `translateX(${offset}px)`;
       
        
        para.innerHTML= String(descriptions[currentIndex])
       
       
        

        
 
}
showGiorno(currentIndex);
});
