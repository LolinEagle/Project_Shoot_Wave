if(!global.gamePaused){
	speed = 28;
	if(place_meeting(x, y, oEnnemie)){
		with(instance_place(x, y, oEnnemie)){hp -= other.bullet;}
		instance_destroy();
	}
	if(place_meeting(x, y, oEnnemieWall)){instance_destroy();}
}