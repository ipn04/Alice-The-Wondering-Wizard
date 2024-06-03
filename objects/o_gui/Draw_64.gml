var bar_width = viewWidth; 
var bar_height = viewHeight; 
var offset_percentage = 0.95;
var healthbar_y1 = viewHeight * (1 - offset_percentage);
var healthbar_y2 = healthbar_y1 + 15;

draw_healthbar(0,0, viewWidth, 15, o_player.experience / o_player.exp_max * 100, $003300, $00B200, $3232FF, 0, 1, 1);
draw_healthbar(40, healthbar_y1, 480, healthbar_y2, o_player.hp / o_player.hp_max * 100, $003300, $3232FF, $00B200, 0, 1, 1);