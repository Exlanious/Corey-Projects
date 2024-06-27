var currentMinutes = floor(timeSeconds/60);
var currentSeconds = timeSeconds %60;

var timeString = string(currentMinutes) + ":";
if (currentSeconds < 10){
	timeString += "0" +  string(currentSeconds)
}else{
	timeString += string(currentSeconds)	
}

draw_text(10, 30, timeString);

