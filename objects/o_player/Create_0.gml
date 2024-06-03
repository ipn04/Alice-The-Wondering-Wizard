/// @description Insert description here
// You can write your code in this editor
event_inherited();
walk_spd = 5;
hp_max = 25;
hp = hp_max;
is_mc = 1;
experience = 0;
exp_max = 5;
level = 1;
stocklevel = 0;
levelcount = 0;


aim_dir = 0;
wand_dis = 22;
wand_dis_y = 50;
fire_rate = 8;
can_attack = true;
arrow_speed = 8;
global.damage = 30;

my_wand = instance_create_layer(x, y, "Instances", o_wand);

cursor_sprite = s_cursor;
window_set_cursor(cr_none);
ready_to_restart = false;

camWidth = 1920;
camHeight = 1080;

follow = o_player;

xTo = x;
yTo = y;

if(is_mc == 1) {
	draw_text(x-20, y-50, level);
}
