if(!global.gamePaused){
	speed = 16;
	if(place_meeting(x, y, oPlayer)){
		global.healPlayer -= other.bullet;
		instance_destroy();
	}
	if(place_meeting(x, y, oEnnemieWall)){instance_destroy();}
}