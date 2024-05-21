// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reset_variables() {
	left = 0;
	right = 0;
	up = 0;
	down = 0;
	vmove = 0;
	hmove = 0;
}

function get_input(){
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("S")) down = 1;
}

function calc_movement(){
	hmove = right - left;
	vmove = down - up;
	
	var _facing = (aim_dir < 90 or aim_dir > 270);
	if _facing == 0 _facing = -1;
	facing = _facing;
	
	if hmove != 0 or vmove != 0 {
		var _dir = point_direction(0, 0, hmove, vmove);	
		
		hmove = lengthdir_x(walk_spd, _dir);
		vmove = lengthdir_y(walk_spd, _dir);
		
		x += hmove;
		y += vmove;
	}
	
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	
	my_wand.image_angle = aim_dir;
	
	if (_facing == 1) {
		my_wand.image_yscale = 1;  
	} else if (_facing == -1) {
	    my_wand.image_yscale = -1;   
	}
}

function anim() {
	if hmove != 0 or vmove != 0 {
		sprite_index = s_player_walk;	
	} else {
		sprite_index = s_player_idle;
	}
}

function check_fire() {
	if mouse_check_button(mb_left) {
		if can_fire {
			can_fire = false;
			alarm[0] = fire_rate;
			
			var _dir = point_direction(x, y, mouse_x, mouse_y);
			
			var offsetX = 100 * cos(degtorad(aim_dir));
			var offsetY = 100 * sin(degtorad(aim_dir));
			var _inst = instance_create_layer(my_wand.x + offsetX, my_wand.y - offsetY, "Arrow", o_arrow);
			
			with(_inst) {
				speed = other.arrow_speed;
				direction = _dir;
				image_angle = _dir;
				owner_id = other;
			}
		}
	}
}

