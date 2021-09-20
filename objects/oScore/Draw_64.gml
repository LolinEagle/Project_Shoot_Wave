///@desc Hud Score
if(!global.gamePaused){
	scDrawSet(fArial48, fa_right, fa_top);
	if(instance_exists(oPlayer)){
		draw_rectangle(RES_W, 0, RES_W - 416, 80, false);
		draw_set_color(c_black);
		draw_rectangle(RES_W, 0, RES_W - 413, 77, false);
		draw_set_color(c_white);
		
		//Score
		if(global.theScore < 10){
			draw_text(RES_W - 32, 0, "Score : 00" + string(global.theScore));
		}else if(global.theScore >= 10 && global.theScore < 100){
			draw_text(RES_W - 32, 0, "Score : 0" + string(global.theScore));
		}else if(global.theScore >= 100){
			draw_text(RES_W - 32, 0, "Score : " + string(global.theScore));
		}
	}

	//Level Ended
	if(global.levelEnded){
		draw_set_colour(c_white);
		draw_set_alpha((global.iLevelEnded + 30) / (FPS * 3));
		draw_rectangle(0, 0, RES_W, RES_H, false);
	}
}