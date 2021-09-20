///@desc Layer set visible & Save
if(room != room_first){
	layer_set_visible("TilesCollisionsH", false);
	layer_set_visible("TilesCollisionsV", false);
	layer_set_visible("LayerEnnemieWall", false);

	//File
	if(file_exists(SAVEFILE)){file_delete(SAVEFILE);}
	var file = file_text_open_write(SAVEFILE);
	file_text_write_real(file, room);
	file_text_write_real(file, global.healPlayer);
	file_text_close(file);
}