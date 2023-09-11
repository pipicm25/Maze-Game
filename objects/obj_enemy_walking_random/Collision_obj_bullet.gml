/// @description Insert description here
// You can write your code in this editor
with (other) instance_destroy();
hp--;
if (hp <= 0) {
	instance_change(obj_enemy_death, true);		
}