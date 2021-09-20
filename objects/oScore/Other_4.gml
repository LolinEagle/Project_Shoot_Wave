///@desc Set up Room
audio_stop_all();
global.theScore = 0;
if(room == rParent){
	global.healPlayer = 100;
	audio_play_sound(snMusic, 100, true);
}