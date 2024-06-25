draw_set_halign(fa_center);
var bar_width = viewWidth; 
var bar_height = viewHeight; 
var offset_percentage = 0.95;
var healthbar_y1 = viewHeight * (1 - offset_percentage);
var healthbar_y2 = healthbar_y1 + 15;
var xpfgcolor = make_color_rgb(0, 255, 255);
var xpbgcolor = make_color_rgb(0, 0, 139);

draw_healthbar(80, healthbar_y1, 480, healthbar_y2, o_player.hp / o_player.hp_max * 100, $003300, $3232FF, $00B200, 0, 1, 1);
draw_healthbar(80, healthbar_y1+40, 480, healthbar_y2+40, o_player.experience / o_player.exp_max * 100, xpbgcolor, xpfgcolor, xpfgcolor, 0, 1, 1);
draw_text(291, 45, string(o_player.hp) + "/" + string(o_player.hp_max));
draw_text(291, 85, string(o_player.experience) + "/" + string(o_player.exp_max));

if(o_player.is_mc == 1) {
    // Use GUI layer coordinates
    var gui_x = 20;
    var gui_y = 45;

	draw_text(gui_x + 20, gui_y, "HP");
	draw_text(gui_x + 20, gui_y + 40, "XP");

	draw_set_halign(fa_left);
	var damage_text = "Damage: " + checkForZero(global.damage);
	
	draw_text(gui_x, gui_y + 80, damage_text);
    draw_text(gui_x, gui_y + 120, "Fire Rate: " + checkForZero(o_player.fire_rate));
	draw_text(gui_x, gui_y + 160, "LVL: " + checkForZero(o_player.level));

}