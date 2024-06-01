/// @description Insert description here
// You can write your code in this editor
event_inherited();
walk_spd = 5;
hp_max = 10;
hp = hp_max;
is_mc = 1;
experience = 0;
exp_max = 5;
level = 0;

aim_dir = 0;
wand_dis = 22;
wand_dis_y = 50;
fire_rate = 30;
can_attack = true;
arrow_speed = 8;

my_wand = instance_create_layer(x, y, "Instances", o_wand);

cursor_sprite = s_cursor;
window_set_cursor(cr_none);
ready_to_restart = false;

camWidth = 1920;
camHeight = 1080

follow = o_player;

xTo = x;
yTo = y;
