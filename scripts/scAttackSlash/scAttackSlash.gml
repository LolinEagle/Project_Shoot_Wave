function scAttackSlash(){
	if(sprite_index != sPlayerFire){
		sprite_index = sPlayerFire;
		image_index = 0;
	}

	//Clear hit list
	if(!ds_exists(hitByAttack, ds_type_list)){hitByAttack = ds_list_create();}
	ds_list_clear(hitByAttack);
	mask_index = sPlayerFireHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, oEnnemie, hitByAttackNow, false);

	//Hit Ennemie
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			var hitID = hitByAttackNow[| i];
			
			//If this istance has not yet been hit
			if(ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with(hitID){hp -= 50;}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
}