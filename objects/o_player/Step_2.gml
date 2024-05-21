/// @description Insert description here
// You can write your code in this editor
var _depth = (aim_dir > 0 and aim_dir < 180);
my_wand.depth = depth - 1;

my_wand.x = x + lengthdir_x(wand_dis, aim_dir);
my_wand.y = y + lengthdir_y(wand_dis_y, aim_dir);