$(document).ready(function(){

//=================================== Form  Bragalotto ===================================//

$('.bragalotto').submit(function(event) {
	     event.preventDefault();
	     var url = $(this).attr('action');
	     var datos = $(this).serialize();
	     	$.post(url, datos, function(resultado) {
	     	       alert(resultado);
				//swal({   title: "Bragalotto",   text: resultado,   timer: 300000000, type:"success" });
	     //	$.bootstrapGrowl(resultado, { type: 'success' });
		});
 	});

// LIVESCORE //
$(".score" ).each(function() {
  console.log(this.id.replace('livescore_',''));
	if(this.id.replace('livescore_','')>0){

	$.ajax({
     type: "POST",
     url: "/xmlimport/jogos/"+this.id.replace('livescore_',''),
     async: true,
     beforeSend: function(x) {
      if(x && x.overrideMimeType) {
       x.overrideMimeType("application/j-son;charset=UTF-8");
      }
 },
 dataType: "json",
// data:{Price:Value},
 success: function(response){
 	var idobjecto = "#livescore_"+response[0].idjogo;
	$(idobjecto).html(response[0].score+"<span><i class=\"fa fa-clock-o\"></i> "+response[0].time+"'</span>");
 	}
});

	}




// END FUNCTION LIVESCORE
});

// END document ready
});

