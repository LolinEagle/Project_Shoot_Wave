///@desc Draw Scoreboard
scDrawSet(fArial24, fa_right, fa_middle);
draw_text(RES_W - 16, RES_H_HALF - 24, scrScore[0]);
draw_text(RES_W - 16, RES_H_HALF + 24, scrScore[1]);
draw_text(RES_W - 16, RES_H_HALF + 72, scrScore[2]);
draw_set_color(c_maroon);
draw_text(RES_W - 16, RES_H_HALF - 72, "Best Score :");