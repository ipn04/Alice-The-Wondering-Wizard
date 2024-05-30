/// @description Insert description here
// You can write your code in this editor
event_inherited();
if instance_exists(my_wand) {
	var _depth = (aim_dir > 0 and aim_dir < 180);
	my_wand.depth = depth + _depth;

	my_wand.x = x + lengthdir_x(wand_dis, aim_dir);
	my_wand.y = y + lengthdir_y(wand_dis_y, aim_dir);
}