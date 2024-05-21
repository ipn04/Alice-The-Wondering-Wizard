/// @description Insert description here
// You can write your code in this editor
walk_spd = 1.5;
facing = 1;
aim_dir = 0;
wand_dis = 22;
wand_dis_y = 50;
fire_rate = 30;
can_fire = true;
arrow_speed = 8;

my_wand = instance_create_layer(x, y, "Instances", o_wand);

cursor_sprite = s_cursor;
window_set_cursor(cr_none);