var bar_width = viewWidth; 
var bar_height = viewHeight; 

draw_healthbar(0,0, viewWidth, 10, o_player.experience / o_player.exp_max * 100, $003300, $00B200, $3232FF, 0, 1, 1);
draw_healthbar(40, viewHeight-110, 480, viewHeight-100, o_player.hp / o_player.hp_max * 100, $003300, $3232FF, $00B200, 0, 1, 1);