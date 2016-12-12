try{
	$(".acordeon-cartelera").accordion({
		icons: { "header": "ui-icon-plus", "activeHeader": "ui-icon-minus" },
		heightStyle: "content",
	});

}
catch(er){

}

function writeHour(){
	today = new Date();
	hour = String(today.getHours());
	if(hour.length == 1){
		hour = "0" + hour;
	}
	minutes = String(today.getMinutes());
	if(minutes.length == 1){
		minutes = "0" + minutes;
	}

	moment = hour + ":" + minutes;

	$('#hora_actual').text(moment);
}

$(function(){
	setInterval(writeHour, 1000);
});
