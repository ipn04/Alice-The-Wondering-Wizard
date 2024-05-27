// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calc_entity_movement() {
	x += hsp;
	y += vsp;
	
	hsp *= global.drag;
	vsp *= global.drag;
	
	check_if_stopped();
}


function check_facing() {
	if knockback_time <= 0 {
		var _facing = sign(x - xp);
		if _facing != 0 facing = _facing;
	}
}

function check_for_player(){
	var _dis = distance_to_object(o_player);
	 
	if ((_dis <= alert_dis) or alert) and _dis > attack_dis {
		alert = true; 
		if calc_path_timer-- <= 0 {

			calc_path_timer = calc_path_delay;
			
			if x == xp and y == yp var _type = 0 else var _type = 1;
		
			var _found_player = mp_grid_path(global.mp_grid, path, x, y, o_player.x, o_player.y, choose(0, 1));
		
			if _found_player {
				path_start(path, move_spd, path_action_stop, false);	
			}
		}
	} else {
		if _dis <= attack_dis {
			path_end();	
		}
	}
}
	
function enemy_anim(){
	switch(state) {
		case states.IDLE:
			sprite_index = s_idle;
			show_hurt();
		break;
		case states.MOVE:
			sprite_index = s_walk;
			show_hurt();
		break;
		case states.ATTACK:
			sprite_index = s_attack;
		break;
		case states.DEAD:
			sprite_index = s_dead;
		break;
	}
	depth = -bbox_bottom;
	xp = x;
	yp = y;
}
function show_hurt() {
	if knockback_time-- > 0 sprite_index = s_hurt;
	
}