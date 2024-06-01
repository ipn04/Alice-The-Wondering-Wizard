// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_entity(_tid, _sid, _damage, _time){
	with (_tid) {
		if alarm[HURT] > 0 or state == states.DEAD exit;
		
		hp -= _damage;
		var _dead = is_dead();
		path_end();
		
		if _dead var _dis = 5 else var _dis = 3;
		var _dir = point_direction(_sid.x, _sid.y, x, y);
		hsp += lengthdir_x(_dis, _dir);
		vsp += lengthdir_y(_dis, _dir);
		calc_path_delay = _time;
		alert = true;
		knockback_time = _time;
		alarm[HURT] = hurt_time
		if !_dead state = states.KNOCKBACK;
		image_index = 0;
		return _dead;
	}
}

function is_dead() {
	if 	state != states.DEAD {
		if hp <= 0 {
			state = states.DEAD;
			hp = 0;
			image_index = 0;
			switch(object_index) {
				default:
					
				break;
				case o_player:
					if instance_exists(my_wand) instance_destroy(my_wand);
				break;
				case o_enemy:
					if (o_player.experience < o_player.exp_max-1) {
						o_player.experience += 1;
					}
					else {
						o_player.level += 1;
						o_player.experience = 0;
						ability_card();
					}
				break;
			}
			return true;
		}
	} else return true;
}

function check_if_stopped() {
	if abs(hsp) < 0.1 hsp = 0;
	if abs(vsp) < 0.1 vsp = 0;
}

function show_healthbar() {
	if (hp != hp_max and hp > 0) {
        var bar_width = 50; 
        var bar_height = 10; 
        
        var bar_x1 = x - bar_width / 2;
        var bar_y1 = y - 34; 
        var bar_x2 = x + bar_width / 2;
        var bar_y2 = bar_y1 + bar_height;
        
        draw_healthbar(bar_x1, bar_y1, bar_x2, bar_y2, hp / hp_max * 100, $003300, $3232FF, $00B200, 0, 1, 1);
    }
}
function show_xp() {   
   if(is_mc == 1) {
	draw_text(x-20, y-50, level);
   }
}

//ability card
function ability_card() { 
	var card_width = 32; // Width of each card
    var card_height = 32; // Height of each card
    var gap_size = 400; // Gap between the cards
    var grid_cols = 3; // Number of columns

    // Calculate the total width of the grid (3 columns)
    var total_width = grid_cols * card_width + (grid_cols - 1) * gap_size;

    // Calculate the starting x position to center the grid on the screen
    var start_x = (display_get_width() - total_width) / 4;
    // Calculate the y position to center the grid vertically
    var center_y = display_get_height() / 6;

    for (var j = 0; j < grid_cols; j++) {
        // Calculate the position for each column with gap
        var pos_x = start_x + j * (card_width + gap_size);
        var pos_y = center_y - card_height / 2; // Center the card vertically

        // Create the o_ability instance at the calculated position
        instance_create_layer(pos_x, pos_y, "Instances", o_ability);
    }
}