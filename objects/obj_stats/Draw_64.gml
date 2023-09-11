draw_set_font(fnt_playerstats)
draw_set_color(c_white);
draw_text(100, 30, "HEALTH: " + string(global.hp));
draw_text(260, 30, "TIME: " + string(global.game_time));