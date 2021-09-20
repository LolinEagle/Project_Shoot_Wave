if(place_meeting(x, y, oCrosshair) && image_index != 2){
	image_index = 1;
	showText = true;
	iTitle++;
	selected = true
	xx = oCrosshair.x + 16;
	yy = oCrosshair.y + 72;
}else{
	image_index = 0;
	showText = false;
	iTitle = 0;
	selected = false
}