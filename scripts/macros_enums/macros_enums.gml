// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro CAN_ATTACK		0
#macro HURT				1

enum states {
	IDLE,
	MOVE, 
	ATTACK,
	DEAD,	
	KNOCKBACK,
}