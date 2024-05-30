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