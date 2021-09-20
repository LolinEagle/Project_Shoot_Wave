///@desc Read Score
if(scoreBoard && !scoreBoardReaded){
	var fileScore = file_text_open_read(SCOREBOARD);
	if(fileScore != -1){
		//Read
		var i = 0;
		while(!file_text_eof(fileScore)){
			scrScore[i] = file_text_read_real(fileScore);
			file_text_readln(fileScore);
			i++;
		}
		
		//Sort & Close
		array_sort(scrScore, false);
		file_text_close(fileScore);
		scoreBoardReaded = true;
	}
}