///@desc Spawn Ennemie
if(!global.gamePaused){
	if(--spawnFixed <= 0){
		with(instance_create_layer(x, y, "LayerEnnemie", oEnnemie)){
			weapon = irandom(2);
		}
		spawnFixed = FPS * 8;
	}
}