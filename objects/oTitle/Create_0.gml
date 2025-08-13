//Main
instance_create_layer(RES_W_HALF, RES_H_HALF - 160, layer, oTitle1);
instance_create_layer(RES_W_HALF, RES_H_HALF, layer, oTitle2);
instance_create_layer(RES_W_HALF, RES_H_HALF + 160, layer, oTitle3);

//Side
instance_create_layer(0, 0, layer, oTitleCommands);
instance_create_layer(0, 0, layer, oTitleScoreboard);
instance_create_layer(RES_W - 32, RES_H - 32, layer, oTitleVersion);