/// @description Insert description here
// You can write your code in this editor
var death_timer = 0;

switch(state) {
	case states.DEAD:
		image_index = image_number - 1;
		image_speed = 0;
	break;
	case states.ATTACK:
		image_index = 0;
		state = states.IDLE;
	break;
}