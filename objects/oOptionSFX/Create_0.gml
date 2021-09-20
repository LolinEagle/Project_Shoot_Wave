///@desc Variable
selected = false;
percentage = round(global.gameSFX * 100);
scCameraGetView();

//Limit
limitLeft  = x - 320;
limitRight = x + 320;
x = limitLeft + ((limitRight - limitLeft) * global.gameSFX);