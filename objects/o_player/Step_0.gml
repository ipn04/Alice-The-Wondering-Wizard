/// @description Insert description here
// You can write your code in this 
switch(state) {
	default:
		reset_variables();

		get_input();

		calc_movement();
		
		aim_wand();

		check_fire();

		anim();
	break;
	case states.KNOCKBACK:
		reset_variables();

		calc_movement();
		
		aim_wand();
		
		if knockback_time-- <= 0 state = states.IDLE;

		anim();
	break;
	case states.DEAD:
		reset_variables();

		calc_movement();
		
		if ready_to_restart and mouse_check_button(mb_left) game_restart();
		
		anim();
	break;
}

if (follow != noone)
{
xTo = follow.x;
yTo = follow.y;
}

x += (xTo - x)/25;
y += (yTo - y)/25;

camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5));

