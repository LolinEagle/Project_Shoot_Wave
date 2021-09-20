//Weapon
weaponSlot = 0;
rateOfFire = 0;
rateOfSwitch = 0;
firing = false;
reload = false;
weaponSlotMax = 3;

//Speed
hspd = 0;
vspd = 0;

//Ammo
handgun = 20;
rifle = 30;
shotgun = 7;
handgunMax = 20;
rifleMax = 30;
shotgunMax = 7;

//Shader
iFlash = 0;
flashPlayer = false;
flashBetween  = FPS / 6;//Time between the flash
flashDurasion = FPS / 4;//Duration of the flash

//Other
tilemapH = layer_tilemap_get_id("TilesCollisionsH");
tilemapV = layer_tilemap_get_id("TilesCollisionsV");
hitByAttack = ds_list_create();