draw_set_halign(fa_center);
var bar_width = viewWidth; 
var bar_height = viewHeight; 
var offset_percentage = 0.95;
var healthbar_y1 = viewHeight * (1 - offset_percentage);
var healthbar_y2 = healthbar_y1 + 15;

draw_healthbar(0,0, viewWidth, 15, o_player.experience / o_player.exp_max * 100, $003300, $00B200, $3232FF, 0, 1, 1);
draw_healthbar(40, healthbar_y1, 480, healthbar_y2, o_player.hp / o_player.hp_max * 100, $003300, $3232FF, $00B200, 0, 1, 1);

if(o_player.is_mc == 1) {
    // Use GUI layer coordinates
    var gui_x = 20; // Example x-coordinate relative to the GUI
    var gui_y = 45; // Example y-coordinate relative to the GUI
	
    draw_text(gui_x, gui_y, string(o_player.level));
	draw_text(gui_x + 70, gui_y + 40, "Damage: " + string(global.damage));
    draw_text(gui_x + 70, gui_y + 80, "Fire Rate: " + string(o_player.fire_rate));
}